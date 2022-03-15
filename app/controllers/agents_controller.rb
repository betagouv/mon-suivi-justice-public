class AgentsController < ApplicationController
  def show
    @agent = current_convict.agent
  end
end
