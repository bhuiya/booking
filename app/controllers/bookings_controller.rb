class BookingsController < ApplicationController

  layout :resolve_layout

  def new
    @booking = Booking.new
  end

  def create
 		@booking = Booking.create(booking_params)
		if @booking.valid?
			flash[:success] = 'Your todo has been successfully created'
			redirect_to bookings_path
		else
			flash[:error] = 'Missing information'
			render :new
 		end
  end

  def index
     @bookings = Booking.all
     puts @bookings.name
  end

  def edit
     @booking = Booking.find(params[:id])
  end

  def show
     @booking_show = Booking.find(params[:id])
  end

  def update
    booking = Booking.find(params[:id])
    booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    Booking.destroy(params[:id])
    redirect_to bookings_path
  end

  private
   def booking_params
	  	params.require(:booking).permit(:name, :price, :address, :state, :country, :phone, :email)
	 end

  def resolve_layout
    case action_name
    when "new", "create", "index", "edit"
      "secondary.html.erb"
    else
        "application.html.erb"
    end
  end
end
