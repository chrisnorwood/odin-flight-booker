class PassengerMailer < ApplicationMailer
  default from: 'user@odin_flight_booker'

  def confirmation_email(flight, booking, passengers)
    @flight     = flight
    @booking    = booking
    @passengers = passengers
    @url        = booking_url(@booking)

    @passengers.each do |passenger|
      @passenger = passenger
      mail(to: passenger.email, subject: 'Thanks for Your Booking')
    end
  end
end