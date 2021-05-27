class RemoveCountryFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :country, :string
  end
end
