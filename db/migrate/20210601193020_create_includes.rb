class CreateIncludes < ActiveRecord::Migration[6.1]
  def change
    create_table :includes do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :location
      t.string :included
      t.string :nonincluded

      t.timestamps
    end
  end
end
