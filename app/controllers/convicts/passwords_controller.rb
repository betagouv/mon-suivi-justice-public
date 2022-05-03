# frozen_string_literal: true

class Convicts::PasswordsController < Devise::PasswordsController
  def create
    @convict = Convict.find_by(phone: PhonyRails.normalize_number(params.dig(:convict, :phone), country_code: "FR"))
    redirect_to root_path, alert: t(".no_convict") and return unless @convict
    # Generate token by hand to send via SMS and not use Devise default email
    raw, hashed = Devise.token_generator.generate(Convict, :reset_password_token)
    @convict.update(reset_password_token: hashed, reset_password_sent_at: Time.zone.now)
    SmsSenderJob.perform_now(sms_params(@convict, raw))
    redirect_to root_path, notice: t(".notice")
  end

  private

  def sms_params(convict, raw_token)
    {
      sender: "RDVJustice",
      recipient: convict.phone,
      content: I18n.t("convicts.password_forgotten.sms_content", link: helpers.edit_password_url(convict, reset_password_token: raw_token)),
      webUrl: "https://820b-2a01-e34-ec77-7c30-4df4-5063-ae00-15c1.ngrok.io/sms_webhook"
    }
  end
end
