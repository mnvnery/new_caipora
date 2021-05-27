class RemovePriceFromTrips < ActiveRecord::Migration[6.1]
  def change
    remove_column :trips, :price, :integer
  end
end
