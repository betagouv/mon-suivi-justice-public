class SmsSenderJob < ApplicationJob
  def perform(sms_params)
    transac_sms = SibApiV3Sdk::SendTransacSms.new(sms_params)
    api_instance = SibApiV3Sdk::TransactionalSMSApi.new
    message = api_instance.send_transac_sms(transac_sms)
    TextMessage.create(message_id: message.message_id, content: sms_params.dig(:content),
      phone: sms_params.dig(:recipient))
  end
end
