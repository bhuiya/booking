class BookingCustomersController < ApplicationController

 def new
  @booking = Booking.find(params[:booking_id])
  @booking_customer = BookingCustomer.new
 end

 def create
   @current_user =current_user.id.to_i
   @registration= BookingCustomer.create(booking_id: params[:booking_id].to_i, customer_id: @current_user)
   # byebug
   if @registration.valid?
    flash[:success] = 'Your guest event has been successfully created'
    redirect_to  userhome_index_path
   else
    flash[:error] = 'Registion Error: cannot be registrar two event at the same time.'
   end
  end

  private
   def booking_customers_params
	  	params.require(:booking_customer).permit(:customer_id, :booking_id)
	 end
end
