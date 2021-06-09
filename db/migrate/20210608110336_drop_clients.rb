class DropClients < ActiveRecord::Migration[6.1]
  def up
    drop_table :clients
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
