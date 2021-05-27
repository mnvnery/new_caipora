class RemoveUserFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :user, null: false, foreign_key: true
  end
end
