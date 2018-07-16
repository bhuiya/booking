class CustomersController < ApplicationController
  def index
    @bookings = Booking.all
  end
  def new
    @customer = Customer.new
  end
end
