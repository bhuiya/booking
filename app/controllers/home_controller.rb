class HomeController < ApplicationController

  def index

    if admin_signed_in?
       redirect_to bookings_path
    end

    if user_signed_in?
       redirect_to   userhome_index_path

    end



  end
end
