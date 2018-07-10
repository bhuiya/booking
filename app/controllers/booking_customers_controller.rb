class BookingCustomersController < ApplicationController



  def new
    @booking = Booking.find(params[:booking_id])
    @booking_customer = BookingCustomer.new

  end

  def create
     puts 'booking id'

     	# @booking = BookingCustomer.create(booking_customers_params)
      @current_user =current_user.id.to_i
      puts 'booking id'
      puts params[:booking_id]
      puts 'customer id '
      puts @current_user

      @registration= BookingCustomer.create(booking_id: params[:booking_id].to_i, customer_id: @current_user)
      # @registration.save
      puts @registration
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

   #  def booking_customers_params
   #     params.require(:booking_customer).permit(:booking_id, :customer_id)
   # end

end
