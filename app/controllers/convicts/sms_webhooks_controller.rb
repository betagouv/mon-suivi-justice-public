module Convicts
  class SmsWebhooksController < ApplicationController
    skip_before_action :authenticate_convict!
    skip_before_action :verify_authenticity_token

    def receive
      binding.break
    end
  end
end
