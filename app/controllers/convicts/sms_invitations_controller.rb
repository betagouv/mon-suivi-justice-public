module Convicts
  class SmsInvitationsController < ApplicationController
    skip_before_action :authenticate_convict!
    skip_before_action :verify_authenticity_token

    include ActionController::HttpAuthentication::Basic::ControllerMethods
    http_basic_authenticate_with name: Rails.env.production? ? Rails.application.credentials.dig(:http_basic_auth, :username) : "username", password: Rails.env.production? ? Rails.application.credentials.dig(:http_basic_auth, :password) : "password"

    def create
      convict = Convict.find_by(msj_id: params[:msj_id])
      if convict.present?
        convict.invite! { |convict| convict.skip_invitation = true }
        type = "reminder_content"
      else
        Convict.where(phone: PhonyRails.normalize_number(params[:phone], country_code: "FR")).map(&:destroy) # for tests with whitelisted phone numbers
        convict = Convict.invite!(phone: params[:phone], msj_id: params[:msj_id],
          skip_invitation: true)
        type = "content"
      end
      SmsSenderJob.perform_later(sms_params(convict, type))
      head :ok
    end

    private

    def sms_params(convict, type = "content")
      {
        sender: "RDVJustice",
        recipient: convict.phone,
        content: I18n.t("convicts.sms_invitations.#{type}", link: helpers.accept_convict_invitation_url(invitation_token: convict.raw_invitation_token))
      }
    end
  end
end
