class SmsSenderJob < ApplicationJob
  def perform(sms_params)
    transac_sms = SibApiV3Sdk::SendTransacSms.new(sms_params)
    api_instance = SibApiV3Sdk::TransactionalSMSApi.new
    api_instance.send_transac_sms(transac_sms)
  end
end
