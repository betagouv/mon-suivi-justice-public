class CpipsController < ApplicationController
  def show
    @cpip = current_convict.cpip
  end
end
