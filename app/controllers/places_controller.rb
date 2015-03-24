class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update]

  def index
    @places = Place.all
  end

  def show; end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      redirect_to places_path, notice: "Delivery cread"
    else
      render :new, alert: "Error al crear delivery"
    end
  end

  def edit; end

  def update
    if @place.update(place_params)
      redirect_to @place, notice: "Delivery editado"
    else
      render :edit
    end
  end

private
  def set_place
    @place ||= Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :street, :city, :phone, :phone_b, :phone_c)
  end
end