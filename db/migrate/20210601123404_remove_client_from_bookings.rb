class RemoveClientFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :client, null: false, foreign_key: true
  end
end
