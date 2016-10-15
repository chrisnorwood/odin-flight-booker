class RemovePassengerIdFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_index :bookings, name: "index_bookings_on_flight_id_and_passenger_id"
    remove_index :bookings, name: "index_bookings_on_passenger_id"
    remove_column :bookings, :passenger_id
  end
end
