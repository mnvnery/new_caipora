class CreateTravellers < ActiveRecord::Migration[6.1]
  def change
    create_table :travellers do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
