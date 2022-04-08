require "rails_helper"

RSpec.describe Convict, type: :model do
  describe "validations" do
    subject { Convict.new(phone: "+33666666666", msj_id: 1) }

    it { should validate_presence_of(:msj_id) }
    it { should validate_uniqueness_of(:msj_id) }
    it { should validate_presence_of(:phone) }
    it { should validate_uniqueness_of(:phone).case_insensitive }

    it 'should validate password format' do
      convict = Convict.new(password: "example")
      expect(convict).to be_invalid
      expect(convict.errors.messages[:password]).to include("est trop court (au moins 10 caractères)")
      expect(convict.errors.messages[:password]).to include("doit contenir au moins un chiffre")
      expect(convict.errors.messages[:password]).to include("doit contenir au moins un signe de ponctuation")
      expect(convict.errors.messages[:password]).to include("doit contenir au moins une lettre majuscule")
    end
  end
end
