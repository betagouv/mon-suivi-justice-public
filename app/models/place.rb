class Place
  include ActiveModel::Model

  attr_accessor :name, :address, :phone, :email, :contact_method

  def map_link
    "https://www.google.com/maps/search/?api=1&query=#{name.gsub(/\s/, "+")},+#{address.gsub(/\s/, "+")}"
  end

  def contact
    (contact_method == "phone") ? phone : email
  end

  def human_name
    return "Votre domicile" if name&.downcase&.include?("domicile")

    name
  end
end
