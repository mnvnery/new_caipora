class RemoveNifFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :NIF, :string
  end
end
