class UtesController < ApplicationController
  before_action :set_ute, only: [:show, :edit, :update, :destroy]

  def index
    @utes = Ute.all
  end

  def new
    @ute = Ute.new
  end

  def create
    @ute = Ute.new(ute_params)
    @ute.user_id = current_user.id
    if @ute.save
      redirect_to ute_path(@ute)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @ute.update(ute_params)
      redirect_to ute_path(@ute)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ute.destroy
    redirect_to root_path
  end

  private

  def ute_params
    params.require(:ute).permit(:model, :year, :location, :details, :image_url, :price)
  end

  def set_ute
    @ute = Ute.find(params[:id])
  end
end
