class Appointment
  include ActiveModel::Model

  attr_accessor :datetime, :duration, :state, :origin_department, :place,
                :organization_name, :agenda_name, :appointment_type

  delegate :name, :address, :phone, :email, :contact_method, to: :place, prefix: true
end
