class SessionsController < ApplicationController

  def create
    admin = Admin.authenticate params[:name], params[:password]
    if admin.nil?
      redirect_to admin_login_path, :flash => { :error => "Incorrect email or password" }
    else
      session[:admin_id] = admin.id
      redirect_to '/admin/#deals'
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to admin_login_path, :notice => "Logged out!"
  end
end
