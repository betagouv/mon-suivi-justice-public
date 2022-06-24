require "rails_helper"

RSpec.describe SmsSenderJob, type: :job do
  let(:convict) { FactoryBot.create :convict, phone: "+33606060607" }
  let(:content) { "test SMS" }

  describe "#perform" do
    let(:tested_method) { SmsSenderJob.perform_now(convict, content) }
    let(:adapter_dbl) { instance_double LinkMobilityAdapter, send_sms: true }

    before do
      allow(LinkMobilityAdapter).to receive(:new).and_return adapter_dbl
      tested_method
    end

    it "instantiates LinkMobilityAdapter" do
      expect(LinkMobilityAdapter).to have_received(:new).once
    end

    it "send sms" do
      expect(adapter_dbl).to have_received(:send_sms).once.with(convict, content)
    end
  end
end
