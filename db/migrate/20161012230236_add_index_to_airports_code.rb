class AddIndexToAirportsCode < ActiveRecord::Migration[5.0]
  def change
    add_index :airports, :code
  end
end
