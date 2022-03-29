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
      let(:transac_sms) { instance_double(SibApiV3Sdk::SendTransacSms) }
      let(:api_instance) { instance_double(SibApiV3Sdk::TransactionalSMSApi) }

      it "creates the convict" do
        VCR.use_cassette("send_in_blue/invitation", serialize_with: :json) do
          expect { do_request }.to change(Convict, :count).by(1)
        end
      end

      it "sends an SMS invitation" do
        VCR.use_cassette("send_in_blue/invitation", serialize_with: :json) do |cassette|
          do_request
          result = JSON.parse(cassette.send(:raw_cassette_bytes), object_class: OpenStruct).http_interactions.first
          request_body = JSON.parse(result.request.body.string, object_class: OpenStruct)
          expect(result.response.status.code).to eq(201)
          expect(request_body.sender).to eq("RDVJustice")
          expect(request_body.recipient).to eq("+33666666666")
          expect(request_body.content).to eq("Bonjour, votre compte Mon Suivi Justice a été créé. Pour y accéder et suivre vos rendez-vous justice, cliquez sur le lien suivant et choisissez votre mot de passe: http://www.example.com/convicts/invitation/accept?invitation_token=<TOKEN>")
        end
      end
    end

    context "when the convict already exists" do
      before do
        FactoryBot.create(:convict, msj_id: 1, phone: "+33666666666")
      end

      it "sends an SMS invitation" do
        VCR.use_cassette("send_in_blue/invitation_reminder", serialize_with: :json) do |cassette|
          do_request
          result = JSON.parse(cassette.send(:raw_cassette_bytes), object_class: OpenStruct).http_interactions.first
          request_body = JSON.parse(result.request.body.string, object_class: OpenStruct)
          expect(result.response.status.code).to eq(201)
          expect(request_body.sender).to eq("RDVJustice")
          expect(request_body.recipient).to eq("+33666666666")
          expect(request_body.content).to eq("Bonjour, votre compte Mon Suivi Justice vous attend toujours. Pour y accéder et suivre vos rendez-vous justice, cliquez sur le lien suivant et choisissez votre mot de passe: http://www.example.com/convicts/invitation/accept?invitation_token=<TOKEN>")
        end
      end
    end
  end
end
