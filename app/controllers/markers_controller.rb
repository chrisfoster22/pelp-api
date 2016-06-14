class MarkersController < ApplicationController

  def index
    @markers = Marker.all
  end

  def new
    @marker = Marker.new
  end

  def create
  @marker = Marker.new(marker_params)

  @marker.save
  redirect_to @marker
end

private
  def marker_params
    params.require(:marker).permit(:name, :marker_type, :address, :rating, :img_url, :latitude, :longitude, :yelp_id)
  end

end
