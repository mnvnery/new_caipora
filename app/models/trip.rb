class Trip < ApplicationRecord
    has_many :bookings
    has_many :sign_ups

    monetize :price_cents
end
