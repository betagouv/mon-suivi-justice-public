require "rails_helper"

RSpec.describe "Sms Invitation", type: :request do
  let(:headers) do
    {Authorization: ActionController::HttpAuthentication::Basic.encode_credentials("username", "password")}
  end
  let(:path) { sms_invitations_path }
  let(:params) { {phone: "+33666666666", msj_id: "1"} }
  let(:do_request) { post(path.to_s, headers:, params:) }

  describe "POST /create" do
    context "when the convict does not exist yet" do
      it "creates the convict" do
        expect { do_request }.to change(Convict, :count).by(1)
      end

      it "enqueues the right SMS invitation" do
        expect { do_request }.to have_enqueued_job(SmsSenderJob).once
      end
    end

    context "when the convict already exists" do
      before do
        FactoryBot.create(:convict, msj_id: 1, phone: "+33666666666")
      end

      it "creates the convict" do
        expect { do_request }.to change(Convict, :count).by(0)
      end

      it "enqueues the right SMS invitation" do
        expect { do_request }.to have_enqueued_job(SmsSenderJob).once
      end
    end
  end
end
