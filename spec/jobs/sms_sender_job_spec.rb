require "rails_helper"

RSpec.describe SmsSenderJob, type: :job do
  describe "#perform" do
    let(:params) do
      {
        sender: "RDVJustice",
        recipient: "+33666666666",
        content: "Bonjour, votre compte Mon Suivi Justice a été créé. Pour y accéder et suivre vos convocations justice, cliquez sur le lien suivant et choisissez votre mot de passe: http://www.example.com/convicts/invitation/accept?invitation_token=<TOKEN>"
      }
    end

    before do
      ActiveJob::Base.queue_adapter = :test
    end

    it "sends the correct SMS invitation" do
      VCR.use_cassette("send_in_blue/invitation", serialize_with: :json, record: :new_episodes) do |cassette|
        SmsSenderJob.perform_now(params)
        result = JSON.parse(cassette.send(:raw_cassette_bytes), object_class: OpenStruct).http_interactions.first
        request_body = JSON.parse(result.request.body.string, object_class: OpenStruct)
        expect(result.response.status.code).to eq(201)
        expect(request_body.sender).to eq("RDVJustice")
        expect(request_body.recipient).to eq("+33666666666")
        expect(request_body.content).to eq("Bonjour, votre compte Mon Suivi Justice a été créé. Pour y accéder et suivre vos convocations justice, cliquez sur le lien suivant et choisissez votre mot de passe: http://www.example.com/convicts/invitation/accept?invitation_token=<TOKEN>")
      end
    end
  end
end
