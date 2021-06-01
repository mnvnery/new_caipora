class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :trips, :location, :name
  end
end
