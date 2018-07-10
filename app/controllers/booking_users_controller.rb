class BookingUsersController < ApplicationController
  before_action :authenticate_user!
    layout :resolve_layout
  def new
    @booking = Booking.find(params[:booking_id])
    @booking_user = BookingUser.new
  end

  def create
     puts 'booking id'
     @current_user =current_user.id.to_i
      puts 'booking id'
      puts params[:booking_id]
      puts 'customer id '
      puts @current_user
      @user_bookings = BookingUser.find_by( booking_id: params[:booking_id].to_i, user_id: @current_user )

      if @user_bookings == nil
        @registration= BookingUser.create(booking_id: params[:booking_id].to_i, user_id: @current_user)

        puts @registration
        flash[:success] = 'Your registration has been successfully created'
        redirect_to  userhome_index_path

      else
          flash[:error] = 'You have already Registrar.'
          redirect_to new_booking_booking_user_path(params[:booking_id])


      end

  end
  def show
      @current_user =current_user.id.to_i
      @user_booking = BookingUsers.where(["user_id = ? ", @current_user])
      p @user_booking

  end


  private
    def booking_users_params
      params.require(:booking_user).permit(:booking_id, :user_id)
    end

    def resolve_layout
      case action_name
      when "new", "create"
        "secondary.html.erb"

      else
        "application.html.erb"
      end
    end

end
