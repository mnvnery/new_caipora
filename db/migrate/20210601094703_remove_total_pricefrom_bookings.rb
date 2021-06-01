class RemoveTotalPricefromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :total_price
  end
end
