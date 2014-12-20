class MySessionsController < Devise::SessionsController

  before_filter :configure_permitted_params


  protected
    def configure_permitted_params
        devise_parameter_sanitizer.for(:sign_in) do |u| 
          u.permit(:email, :password, :remember_me)
        end
    end
end
