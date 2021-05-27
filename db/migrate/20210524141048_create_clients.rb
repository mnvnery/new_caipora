class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :NIF
      t.string :address
      t.string :post_code
      t.string :city
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
