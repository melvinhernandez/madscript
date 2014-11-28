class RegistrationsController < Devise::RegistrationsController
  
  before_filter :configure_permitted_parameters

  def sign_up_params
    params.require(:author).permit(:username, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:author).permit(:username, :email, :password, :password_confirmation, :current_password)
  end

  private :sign_up_params
  private :account_update_params

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:username, :email, 
        	:password, :password_confirmation)
      end
      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit(:username,
          :email, :password, :password_confirmation, :current_password)
      end
    end

end