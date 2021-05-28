class Trip < ApplicationRecord
    has_many :bookings
    has_many :sign_ups
    has_many :programs
    has_many :faqs
    has_rich_text :description

    monetize :price_cents
    accepts_nested_attributes_for :programs, :faqs
end
