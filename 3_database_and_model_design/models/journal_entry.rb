class JournalEntry < ApplicationRecord
  belongs_to :client

  validates :content, presence: true, length: (1..10_000)
end
