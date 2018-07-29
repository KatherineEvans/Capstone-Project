class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.decimal :amount, precision: 9, scale: 2
      t.string :description
      t.integer :category_id
      t.integer :user_id
      t.integer :trip_id
      t.string :photo
      t.string :expense_type
      t.date :date
      t.integer :itinerary_id

      t.timestamps
    end
  end
end
