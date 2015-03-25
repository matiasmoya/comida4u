Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :places

  # Admin routes
  namespace(:admin) do
    get '/', to: 'places#index'

    resources :places
    resources :categories
  end

  root 'places#index'
end
