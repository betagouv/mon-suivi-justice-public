require 'rails_helper'

RSpec.describe TextMessage, type: :model do
  describe 'Validations' do
    subject { TextMessage.new(message_id: '123', content: 'Youpi') }

    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:message_id) }
    it { should validate_uniqueness_of(:message_id).case_insensitive }
  end
end
