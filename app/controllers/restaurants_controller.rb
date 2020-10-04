class RestaurantsController < ApplicationController


  def index
    @restaurants = Restaurant.all.order('name ASC')
    respond_to do |format|
      format.html
      format.json { render json: { restaurants: @restaurants } }
    end
  end

  def show
     @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def edit
  end

def update
  @restaurant = Restaurant.find_by_id params[:id]
  @restaurant.update restaurant_params
  @restaurant.save
  respond_to do |format|
    format.js
  end
end
private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :categoria)
  end

end
