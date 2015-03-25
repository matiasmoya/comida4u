class Admin::PlacesController < Admin::BaseController
  expose(:places)
  expose(:place, attributes: :place_params)

  def index; end

  def show; end

  def new; end

  def create
    if place.save
      redirect_to admin_places_path, notice: "Delivery creado"
    else
      redirect_to :new, alert: "No se creo el delivery"
    end
  end

  def edit; end

  def update
    if place.save
      redirect_to place, notice: "Delivery editado"
    else
      redirect_to :edit, alert: "No se edito el delivery"
    end
  end

  def destroy
    place.destroy
    redirect_to admin_places_path, notice: "Place eliminado"
  end

private
  def place_params
    params.require(:place).permit(:name, :street, :city, :phone, :phone_b, :phone_c)
  end
end