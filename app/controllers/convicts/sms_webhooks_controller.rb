module Convicts
  class SmsWebhooksController < ApplicationController
    skip_before_action :authenticate_convict!
    skip_before_action :verify_authenticity_token

    def receive
      @text_message = TextMessage.find_by(message_id: params["messageId"])
      if @text_message.present? && params["msg_status"] == "softBounces"
        SmsSenderJob.perform_later(sms_params)
      end
      head :ok
    end

    private

    def sms_params
      {
        sender: "RDVJustice",
        recipient: @text_message.phone,
        content: @text_message.content
      }
    end
  end
end
