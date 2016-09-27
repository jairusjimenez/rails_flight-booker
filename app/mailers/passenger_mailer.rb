class PassengerMailer < ApplicationMailer
	default from: "jairusjimenez@live.com"


  def thank_you_email(passenger)
    @passenger = passenger
    @booking = @passenger.bookings.last
    email_with_name = "#{@passenger.name} <#{@passenger.email}>"
    @url  = 'https://fathomless-tor-56042.herokuapp.com/'

    mail(to: email_with_name, subject: 'Thank you for booking with FlightBooker!')

  end
end