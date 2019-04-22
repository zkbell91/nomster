class PlacesController < ApplicationController

  def index
    @places = Place.order("places").paginate(page: params[:page], per_page: 5)
  end

end
