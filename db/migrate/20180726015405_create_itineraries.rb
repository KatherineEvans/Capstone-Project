class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.integer :trip_id
      t.string :description
      t.datetime :time
      t.string :photo

      t.timestamps
    end
  end
end
