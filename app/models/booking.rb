class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :travellers

  monetize :amount_cents
end
