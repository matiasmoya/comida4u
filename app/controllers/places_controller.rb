class PlacesController < ApplicationController
  expose(:places)
  expose(:place, attributes: :place_params)

  def index; end

  def show; end

  def new; end

  def create
    if place.save
      redirect_to places_path, notice: "Delivery cread"
    else
      render :new, alert: "Error al crear delivery"
    end
  end

  def edit; end

  def update
    if place.save
      redirect_to place, notice: "Delivery editado"
    else
      render :edit
    end
  end

private
  def place_params
    params.require(:place).permit(:name, :street, :city, :phone, :phone_b, :phone_c)
  end
end