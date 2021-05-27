class AddSummaryToPrograms < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :summary, :string
  end
end
