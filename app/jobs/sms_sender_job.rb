class SmsSenderJob < ApplicationJob
  def perform(convict, content)
    LinkMobilityAdapter.new.send_sms(convict, content)
  end
end
