class Place
  include ActiveModel::Model

  attr_accessor :name, :address, :phone, :email, :contact_method
end
