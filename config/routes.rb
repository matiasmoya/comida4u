Rails.application.routes.draw do
  resources :places

  root 'high_voltage/pages#show', :defaults => { :id => "home" }
end
