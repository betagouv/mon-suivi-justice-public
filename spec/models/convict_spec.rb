require "rails_helper"

RSpec.describe Convict, type: :model do
  describe "validations" do

    it { should validate_presence_of(:msj_id) }

    context "phone" do
      subject { Convict.new(msj_id: 1) }
      it { should validate_presence_of(:phone) }
      it { should validate_uniqueness_of(:phone) }
    end
  end
end
