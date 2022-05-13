require "rails_helper"

RSpec.describe "Sms Invitation", type: :request do
  let(:headers) do
    {Authorization: ActionController::HttpAuthentication::Basic.encode_credentials("username", "password")}
  end

  describe "DELETE /destroy" do
    let(:path) { "/convicts/1" }
    let(:do_request) { delete(path.to_s, headers:) }

    before do
      FactoryBot.create(:convict, msj_id: 1)
    end

    it "destroy the convict" do
      expect { do_request }.to change(Convict, :count).by(-1)
    end
  end
end
