class BookingsController < ApplicationController
  before_action :set_ute, only: %i[new create update]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.ute = @ute

    if @booking.save
      redirect_to root_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
    @booking.ute = @ute
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
    params.require(:booking).permit(:)
  end

end
