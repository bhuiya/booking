class BookingCustomersController < ApplicationController



  def new
    @booking_customer = BookingCustomer.new

  end

  def create
     puts 'booking id'
     	# @booking = BookingCustomer.create(booking_customers_params)
     # puts params[:booking_id]
     # puts 'customer id '
     # puts current_user.id
     redirect_to  userhome_index_path
     # BookingCustomer.create(booking_id: params[:booking_id], customer_id: current_user.id)
     # eventguest = EventGuest.create(event_id: params[:event_id].to_i, guest_id: guest.id )
  end

  private
    def booking_customers_params
	  	params.require(:booking_customer).permit(:customer_id, :booking_id)
	  end



   #  def booking_customers_params
   #     params.require(:booking_customer).permit(:booking_id, :customer_id)
   # end

end
