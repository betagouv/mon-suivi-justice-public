require "rails_helper"

RSpec.describe Convict, type: :model do
  describe "validations" do
    subject { Convict.new(phone: "+33666666666", msj_id: 1) }

    it { should validate_presence_of(:msj_id) }
    it { should validate_uniqueness_of(:msj_id) }
    it { should validate_presence_of(:phone) }
    it { should validate_uniqueness_of(:phone).case_insensitive }
  end
end
