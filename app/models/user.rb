class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  delegate :first_name, :last_name, :phone, :cpip,
           to: :convict_informations, allow_nil: true
  delegate :id, :first_name, :last_name, :phone, :email, :organization_name,
           to: :cpip, prefix: true, allow_nil: true

  # En dur le temps que la connexion soit mise en place
  def convict_information
    @convict_information ||= JusticeApi::Convict.find(450)
  end

  def appointments
    @appointments ||= convict_information.appointments.map do |appointment|
      place = Place.new(name: appointment.place&.name, address: appointment.place&.adress,
                        phone: appointment.place&.phone, email: appointment.place&.email,
                        contact_method: appointment.place&.contact_method)
      Appointment.new(datetime: appointment.datetime.to_datetime, duration: appointment.duration,
                      state: appointment.state, origin_department: appointment.origin_department,
                      place: place, organization_name: appointment.organization_name,
                      agenda_name: appointment.agenda_name,
                      appointment_type: appointment.appointment_type_name)
    end
  end

  def has_cpip?
    cpip_id.present?
  end
end
