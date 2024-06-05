class BookingsController < ApplicationController
  before_action :set_ute, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.ute = @ute
    @booking.user_id = 1

    if @booking.save
      redirect_to root_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @ute = Ute.find(@booking.ute_id)
    @user = User.find(@booking.user_id)
    
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_ute
    @ute = Ute.find(params[:ute_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status)
  end

end
