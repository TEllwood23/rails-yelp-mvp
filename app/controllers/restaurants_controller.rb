class RestaurantsController < ApplicationController


  before_action only: %i[new create show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(task_params)
      if @restaurant.save
        redirect_to restaurants_path(@restaurant)
      else
        render :new, status: :unprocessable_entity
      end
  end

  private

  def task_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
