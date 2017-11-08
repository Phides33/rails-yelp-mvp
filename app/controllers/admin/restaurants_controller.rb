class Admin::RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to root_path
  end

private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
