class AddBookingIdToPassengers < ActiveRecord::Migration[5.0]
  def change
    add_column :passengers, :booking_id, :integer, index: true
  end
end
