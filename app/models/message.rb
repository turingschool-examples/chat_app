class Message < ApplicationRecord
  validates :content, presence: true
  scope :display, -> { order(:created_at).last(10) }
end
