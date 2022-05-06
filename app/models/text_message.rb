class TextMessage < ApplicationRecord
  validates :content, presence: true
  validates :message_id, presence: true, uniqueness: true
end
