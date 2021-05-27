class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :price

      t.timestamps
    end
  end
end
