class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, :with => :record_not_found
  protect_from_forgery


  private

  def check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
  end

  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == "1"
    else
      # Season this regexp to taste. I prefer to treat iPad as non-mobile.
      request.user_agent =~ /Mobile|webOS|Blackberry|Android/ && request.user_agent !~ /iPad/
    end
  end

  def record_not_found
    redirect_to pages_not_found_path
  end


  def current_admin
    @current_admin ||= (Admin.find(session[:admin_id]) rescue nil) if session[:admin_id]
  end

  def authenticate_admin
    if current_admin
      current_admin
    else
      redirect_to admin_login_path, :flash => { :error => "You need to be logged in to see page"}
    end
  end
  helper_method :current_admin, :authenticate_admin, :mobile_device?
end
