class ApplicationController < ActionController::Base
  protect_from_forgery

  def access_denied(exception)
    flash[:danger] = "#{exception.class}: #{exception.message}"
    redirect_to admin_root_url
  end
end
