class DashboardController < ApplicationController

  def index
    # we want to display links for our 3 actions bellow
    @utes = Ute.all
    @my_utes = Ute.where(user_id: current_user.id) # my utes are the one that have my user id
    #my_utes_bookings # @bookings  that are made on the utes I created
    #ookings_made_by_me # @bookings that are created by me
  end

end
