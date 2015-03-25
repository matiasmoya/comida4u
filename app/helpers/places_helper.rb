module PlacesHelper
  def user_owns?(place)
    current_user && place.user == current_user
  end
end