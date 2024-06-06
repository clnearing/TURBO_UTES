class UtesController < ApplicationController
  before_action :set_ute, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @utes = Ute.all
    @markers = @utes.geocoded.map do |ute|
      {
        lat: ute.latitude,
        lng: ute.longitude
      }
    end
  end

  def new
    @ute = Ute.new
  end

  def create
    @ute = Ute.new(ute_params)
    @ute.user_id = current_user.id
    if @ute.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
    @booking.ute_id = @ute.id

  end

  def edit
  end

  def update
    if @ute.update(ute_params)
      redirect_to dashboard_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ute.destroy
    redirect_to dashboard_path
  end

  private

  def ute_params
    params.require(:ute).permit(:model, :year, :location, :details, :image_url, :availability, :price, :latitude, :longitude )
  end

  def set_ute
    @ute = Ute.find(params[:id])
  end
end
