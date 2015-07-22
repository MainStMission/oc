
# -*- encoding : utf-8 -*-

class ApplicationController < ActionController::Base

  protect_from_forgery

  decent_configuration do
        strategy DecentExposure::StrongParametersStrategy
          end

  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    else
      super # Use the default one
    end
  end

  def update_sanitized_params
      devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:username, :first_name, :last_name, :email, 
                                                             :password, :password_confirmation, :admin )}
  end
end
