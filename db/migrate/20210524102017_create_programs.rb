class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :day
      t.text :description

      t.timestamps
    end
  end
end
