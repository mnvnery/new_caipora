class AddPriceToTrips < ActiveRecord::Migration[6.1]
  def change
    add_monetize :trips, :price, currency: { present: false }
  end
end
