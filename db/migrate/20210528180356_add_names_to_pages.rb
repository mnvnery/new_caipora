class AddNamesToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :name, :string
  end
end
