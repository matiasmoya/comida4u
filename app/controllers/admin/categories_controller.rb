class Admin::CategoriesController < Admin::BaseController
  expose(:categories)
  expose(:category, attributes: :category_params)

  def index; end

  def show; end

  def new; end

  def create
    if category.save
      redirect_to admin_categories_path, notice: "Categoria creada"
    else
      render :new, alert: "No se creo la categoria"
    end
  end

  def edit; end

  def update
    if category.save
      redirect_to admin_categories_path, notice: "Categoria editada"
    else
      render :edit, alert: "No se edito la categoria"
    end
  end

  def destroy
    category.destroy
    redirect_to admin_categories_path, notice: "Categoria eliminada"
  end

private
  def category_params
    params.require(:category).permit(:name)
  end
end