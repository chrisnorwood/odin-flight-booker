class BookingsController < ApplicationController
  
  def new
    @flight    = Flight.find(posted_params[:flight_id])
    @booking   = @flight.bookings.build
    passengers = posted_params[:passengers].to_i
    passengers.times { @booking.passengers.build }
  end

  def create
    @flight  = Flight.find(posted_params[:flight_id])
    @booking = Booking.new(posted_params)
    if @booking.save
      flash[:success] = "Booking created."
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    booking = Booking.find(params[:id])
    @flight     = booking.flight
    @passengers = booking.passengers
  end

  private

    def posted_params
      params.require(:booking).permit(:flight_id, :passengers,
                                      passengers_attributes: [:name, :email])
    end
end
