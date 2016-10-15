class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates    = Flight.order('datetime').map(&:formatted_date).uniq

    unless search_params.empty?
      if search_params[:from_airport] == search_params[:to_airport]
        flash.now[:alert] = "Origin and destination airports cannot be the same."
      else
        @flights = Flight.search(search_params)
      end
    end
  end

  private

    def search_params
      params.permit(:date, :passengers, :from_airport, :to_airport)
    end
end
