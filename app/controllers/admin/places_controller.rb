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
      render :new
    end
  end

  def edit; end

  def update
    if place.save
      redirect_to admin_places_path, notice: "Delivery editado"
    else
      render :edit
    end
  end

  def destroy
    place.destroy
    redirect_to admin_places_path, notice: "Place eliminado"
  end

private
  def place_params
    params.require(:place).permit(:name, :street, :city, :phone, :phone_b, :phone_c, :approved, :category_id, :neighborhood_id)
  end
end