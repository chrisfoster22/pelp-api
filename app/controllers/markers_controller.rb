class MarkersController < ApplicationController

  def index
    @markers = Marker.all
    render json: {markers: @markers}
  end

  def show
  end

  def new
    @marker = Marker.new
  end

  def create
  @marker = Marker.new(marker_params)

  @marker.save
  @markers = Marker.all
  print "Newly created Marker with following params: #{marker_params}"
  render json: @markers
end

private
  def marker_params
    params.require(:marker).permit(:name, :marker_type, :address, :rating, :img_url, :latitude, :longitude, :yelp_id)
  end

end
