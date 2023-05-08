class Provider < ApplicationRecord
  has_many :client_providers
  has_many :clients, through: :client_providers

  validates :name, length: (1..255)
  validates :email, length: (1..255), uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
