class Trip < ApplicationRecord
    has_many :bookings
    has_many :sign_ups
    has_rich_text :content

    monetize :price_cents
end
