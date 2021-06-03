class Trip < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :sign_ups
    has_many :programs, dependent: :destroy
    has_many :faqs, dependent: :destroy
    has_many :includes, dependent: :destroy
    has_rich_text :description

    monetize :price_cents
    accepts_nested_attributes_for :programs, :faqs
end
