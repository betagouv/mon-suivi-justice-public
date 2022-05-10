require "rails_helper"

RSpec.describe "Sms Webhook", type: :request do
  let(:path) { sms_webhook_path }
  let(:do_request) { post(path.to_s, headers:, params:) }

  describe "POST /sms_webhook" do
    before do
      FactoryBot.create(:text_message, message_id: "123", phone: "+33666666666", content: "Youpi")
    end

    context "when the message is soft bounced" do
      let(:params) { {messageId: "123", msg_status: "softBounces"} }

      it "enqueues the SMS" do
        expect { do_request }.to have_enqueued_job(SmsSenderJob).once
      end
    end

    context "when the message is not soft bounced" do
      let(:params) { {messageId: "123", msg_status: "delivered"} }

      it "does not enqueue the SMS" do
        expect { do_request }.not_to have_enqueued_job(SmsSenderJob)
      end
    end
  end
end
