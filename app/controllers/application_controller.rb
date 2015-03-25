class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :set_layout

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

protected

  def set_layout
    if devise_controller? && resource_name == :admin
      'admin_login'
    else
      'application'
    end
  end
end
