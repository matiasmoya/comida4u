class PlacesController < ApplicationController
  expose(:places)
  expose(:place, attributes: :place_params)

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :check_ownership!, only: [:edit, :update, :destroy]

  def index; end

  def show; end

  def new; end

  def create
    place = current_user.places.build(place_params)

    if place.save
      redirect_to places_path, notice: "Delivery creado"
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
    params.require(:place).permit(:name, :street, :city, :phone, :phone_b, :phone_c, :category_id, :neighborhood_id)
  end

  def authenticate_user!
    redirect_to root_url, notice: 'Please log in' unless current_user
  end

  def check_ownership!
    unless place.user == current_user
      redirect_to root_url, notice: "You're trying to update a place that doesnt belongs to you"
    end
  end
end