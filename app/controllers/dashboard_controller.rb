class DashboardController < ApplicationController
# On our dashboard, we want to display the utes we own (My utes),
# the bookings made on our utes (My Utes Bookings) and the bookings we've made on other utes (Booking Made By Me)

  def index
    @utes = Ute.all
    # my utes are the one that have my user id
    @my_utes = Ute.where(user_id: current_user.id)

    # my_utes_bookings - bookings that are made on the utes I created
    @my_utes_bookings = Booking.where(ute_id: @my_utes) # maybe?

    # bookings_made_by_me - bookings that are created by me
    @bookings_made_by_me = Booking.where(user_id: current_user.id)
  end

end
