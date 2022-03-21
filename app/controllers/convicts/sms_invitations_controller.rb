module Convicts
  class SmsInvitationsController < ApplicationController
    skip_before_action :authenticate_convict!
    skip_before_action :verify_authenticity_token

    include ActionController::HttpAuthentication::Basic::ControllerMethods
    http_basic_authenticate_with name: Rails.application.credentials.dig(:http_basic_auth, :username), password: Rails.application.credentials.dig(:http_basic_auth, :password)

    def create
      convict = Convict.invite!(phone: params[:phone], msj_id: params[:msj_id], skip_invitation: true)
      api_instance = SibApiV3Sdk::TransactionalSMSApi.new
      transac_sms = SibApiV3Sdk::SendTransacSms.new(sms_params(convict))
      api_instance.send_transac_sms(transac_sms)
      head :ok
    end

    private

    def sms_params(convict)
      {
        sender: "RDVJustice",
        recipient: convict.phone,
        content: I18n.t("convicts.sms_invitations.content", link: helpers.accept_convict_invitation_url(invitation_token: convict.raw_invitation_token))
      }
    end
  end
end
