class UserhomeController < ApplicationController
  def index
    @bookings = Booking.all
    puts @bookings.name
  end
end
