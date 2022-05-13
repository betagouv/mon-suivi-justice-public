class ConvictsController < ApplicationController
  skip_before_action :authenticate_convict!, only: :destroy
  skip_before_action :verify_authenticity_token, only: :destroy

  def show
  end

  def destroy
    Convict.find_by(msj_id: params[:id]).destroy!

    head :no_content
  end
end
