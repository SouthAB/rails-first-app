class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new # needed to instantiate the form_for
  end

  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.save

    # no need for app/views/hotels/create.html.erb
    redirect_to hotel_path(@hotel)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :address)
  end
end
