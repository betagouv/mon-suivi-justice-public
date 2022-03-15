require "rails_helper"

RSpec.describe Convict, type: :model do
  it { should validate_presence_of(:msj_id) }
end
