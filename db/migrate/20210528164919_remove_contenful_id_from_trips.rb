class RemoveContenfulIdFromTrips < ActiveRecord::Migration[6.1]
  def change
    remove_column :trips, :contenful_id, :string
  end
end
