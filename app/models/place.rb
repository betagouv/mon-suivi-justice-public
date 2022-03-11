class Place
  include ActiveModel::Model

  attr_accessor :name, :address, :phone, :email, :contact_method

  def map_link
    "https://www.google.com/maps/search/?api=1&query=#{name.gsub(/\s/, '+')},+#{address.gsub(/\s/, '+')}"
  end
end
