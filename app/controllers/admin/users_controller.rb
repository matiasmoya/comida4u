class Admin::UsersController < Admin::BaseController
  expose(:users)
  expose(:user, attributes: :user_params)

  def index; end

  def show; end

  def edit; end

  def update
    if user.save
      redirect_to admin_users_path, notice: "Usuario editado"
    else
      render :edit, alert: "No se edito el usuario"
    end
  end

private
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :avatar)
  end
end
