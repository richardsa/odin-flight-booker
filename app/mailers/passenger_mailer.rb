class PassengerMailer < ApplicationMailer

 default from: 'notifications@example.com'
 
 
 
  def thank_you(passenger)
    @passenger = passenger
    @booking = @passenger.bookings.last
    email_with_name = "#{@passenger.name} <#{@passenger.email}>"
    @url  = 'odin-flight-booker.com'

    mail(to: email_with_name, subject: 'Thank you for booking with FlightBooker!')

  end
end
