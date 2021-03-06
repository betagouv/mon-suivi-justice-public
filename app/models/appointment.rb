class Appointment
  include ActiveModel::Model

  attr_accessor :id, :datetime, :duration, :state, :origin_department, :place,
    :organization_name, :agenda_name, :appointment_type, :display_address

  delegate :name, :human_name, :address, :phone, :email, :contact_method, :contact, :map_link,
    to: :place, prefix: true

  def days_from_now
    (datetime.to_date - Date.today).to_i
  end

  def canceled?
    state == "Annulé"
  end
end
