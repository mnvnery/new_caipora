class CreateFaqs < ActiveRecord::Migration[6.1]
  def change
    create_table :faqs do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
