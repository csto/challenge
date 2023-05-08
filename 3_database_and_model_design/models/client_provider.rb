class ClientProvider < ApplicationRecord
  belongs_to :client
  belongs_to :provider

  validates :plan, presence: true, inclusion: { in: %w[basic premium] }
end
