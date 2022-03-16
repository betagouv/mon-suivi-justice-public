class Convict < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  validates :msj_id, presence: true

  delegate :first_name, :last_name, :phone, to: :convict_informations, allow_nil: true
  delegate :id, :first_name, :last_name, :phone, :email, :organization_name, :share_info_to_convict,
    to: :agent, prefix: true, allow_nil: true

  # En dur le temps que la connexion soit mise en place
  def convict_information
    @convict_information ||= MonSuiviJusticeApi::Convict.find(msj_id)
  end

  def appointments
    @appointments ||= convict_information.appointments.map do |appointment|
      place = Place.new(name: appointment.place&.name, address: appointment.place&.adress,
        phone: appointment.place&.phone, email: appointment.place&.email,
        contact_method: appointment.place&.contact_method)
      Appointment.new(id: appointment.id, datetime: appointment.datetime.to_datetime,
        duration: appointment.duration, state: appointment.state,
        origin_department: appointment.origin_department,
        place:, organization_name: appointment.organization_name,
        agenda_name: appointment.agenda_name,
        appointment_type: appointment.appointment_type_name)
    end
  end

  def agent
    @agent ||=
      Agent.new(id: convict_information.agent.id,
        first_name: convict_information.agent.first_name,
        last_name: convict_information.agent.last_name,
        phone: convict_information.agent.phone, email: convict_information.agent.email,
        organization_name: convict_information.agent.organization_name,
        share_info_to_convict: convict_information.agent.share_info_to_convict)
  end

  def future_appointments
    @future_appointments ||=
      appointments.select { |appointment| appointment.datetime > Time.zone.now }
        .sort_by { |appointment| appointment.datetime }
  end

  def past_appointments
    @past_appointments ||=
      appointments.select { |appointment| appointment.datetime < Time.zone.now }
        .sort_by { |appointment| appointment.datetime }.reverse
  end

  def next_appointment
    @next_appointment ||= future_appointments.first
  end

  def has_agent?
    agent_id.present?
  end
end
