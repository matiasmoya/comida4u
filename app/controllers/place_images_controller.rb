class PlaceImagesController < ApplicationController

  def create
    place = Place.find(params[:place_id])
    place_image = PlaceImage.new(place_image_params)
    place_image.place = place

    if place_image.save
      render :js => "console.log('awesome');"
    end
  end

private

  def place_image_params
    params.require(:place_image).permit(:file, :place_id)
  end
end