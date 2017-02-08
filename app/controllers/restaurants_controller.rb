class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant =Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    if restaurant.save
      redirect_to restaurant_path(restaurant)
    else
      redirect_to new_restaurant_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
