class AddFiscalNumberToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :fiscal_number, :string
  end
end
