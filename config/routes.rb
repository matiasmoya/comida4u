Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :places

  # Admin routes
  namespace(:admin) do
    get '/', to: 'dashboard#index'

    resources :places
    resources :users
    resources :categories
    resources :neighborhoods
  end

  root 'places#index'
end
