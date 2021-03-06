class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true
      t.integer :total_price

      t.timestamps
    end
  end
end
