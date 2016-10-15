class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates    = Flight.order('datetime').map(&:formatted_date).uniq
  end
end
