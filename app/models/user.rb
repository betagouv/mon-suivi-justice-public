class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def convict_informations
    @convict_informations ||= JusticeApi::Convict.find(mon_suivi_justice_id)
  end
end
