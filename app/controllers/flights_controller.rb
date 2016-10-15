class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates    = Flight.order('datetime').map(&:formatted_date).uniq

    unless search_params.empty?
      @flights = Flight.search(search_params)
    end
  end

  private

    def search_params
      params.permit(:date, :passengers, :from_airport, :to_airport)
    end
end
