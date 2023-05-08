class Client < ApplicationRecord
  has_many :client_providers
  has_many :providers, through: :client_providers
  has_many :journal_entries

  validates :name, length: (1..255)
  validates :email, length: (1..255), uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
