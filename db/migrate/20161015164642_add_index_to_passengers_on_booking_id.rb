class AddIndexToPassengersOnBookingId < ActiveRecord::Migration[5.0]
  def change
    add_index :passengers, :booking_id
  end
end
