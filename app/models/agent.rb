class Agent
  include ActiveModel::Model

  attr_accessor :id, :first_name, :last_name, :phone, :email, :organization_name

  def full_name
    "#{first_name} #{last_name}".titleize
  end
end
