class UserhomeController < ApplicationController

 layout :resolve_layout
 def index
  @bookings = Booking.all
  @user_bookings = current_user.booking_users
 end

 def show
  @user_bookings = BookingUser.where(user_id: current_user.id)
 end

 private
  def resolve_layout
   case action_name
   when "index", "show"
     "secondary.html.erb"
   else
     "application.html.erb"
   end
 end
end
