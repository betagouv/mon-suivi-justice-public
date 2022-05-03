class SmsSenderJob < ApplicationJob
  def perform(sms_params)
    transac_sms = SibApiV3Sdk::SendTransacSms.new(sms_params)
    api_instance = SibApiV3Sdk::TransactionalSMSApi.new
    # result = api_instance.get_sms_events({ phone_number: "0674426177" })
    api_instance.send_transac_sms(transac_sms)
  end
end
