class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :from_airport_id
      t.integer :to_airport_id
      t.datetime :datetime
      t.integer :duration

      t.timestamps
    end

    add_index :flights, [:from_airport_id, :to_airport_id]
  end
end
