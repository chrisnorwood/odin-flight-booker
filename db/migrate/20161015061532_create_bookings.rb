class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :flight
      t.references :passenger

      t.timestamps
    end
    add_index :bookings, [:flight_id, :passenger_id]
  end
end
