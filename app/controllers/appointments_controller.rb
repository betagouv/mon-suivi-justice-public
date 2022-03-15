class AppointmentsController < ApplicationController
  def index
  end

  def show
    @appointment =
      current_convict.appointments.find { |appointment| appointment.id == params[:id].to_i }
  end
end
