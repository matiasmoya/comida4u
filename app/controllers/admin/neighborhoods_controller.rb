class Admin::NeighborhoodsController < Admin::BaseController
    expose(:neighborhoods)
    expose(:neighborhood, attributes: :neighborhood_params)

    def index; end

    def show; end

    def new; end

    def create
      if neighborhood.save
        redirect_to admin_neighborhoods_path, notice: "Barrio creado"
      else
        render :new, alert: "No se creo el Barrio"
      end
    end

    def edit; end

    def update
      if neighborhood.save
        redirect_to admin_neighborhood_path(neighborhood), notice: "Barrio editado"
      else
        render :edit, alert: "No se edito el Barrio"
      end
    end

    def destroy
      neighborhood.destroy
      redirect_to admin_neighborhoods_path, notice: "Barrio eliminado"
    end

  private
    def neighborhood_params
      params.require(:neighborhood).permit(:name, :street, :city, :phone, :phone_b, :phone_c)
    end
end