class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
 
  private
 
  def require_login
    if !user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_user_session_url # halts request cycle
    end
  end

  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "devise_layout"
    else
      "application"
    end
  end
  
end
