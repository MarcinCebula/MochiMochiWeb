class Admin::Utilities::RetailersController < ApplicationController
  def index
    @retailer = Admin::Utilities::Retailer.new
    @retailers = Admin::Utilities::Retailer.all
  end
  def edit
    @retailer = Admin::Utilities::Retailer.find(params[:id])
    @retailers = Admin::Utilities::Retailer.all
  end
  def create
    @retailer = Admin::Utilities::Retailer.new(params[:retailer])
    if @retailer.save
      redirect_to '/admin/utilities/retailers', :success => "Created Retailer!"
    else
      flash[:error] = @retailer.errors.full_messages
      redirect_to '/admin/utilities/retailers'
    end
  end

  def update
    @retailer = Admin::Utilities::Retailer.find(params[:id])
    @retailer.update_attributes(params[:retailer])
    redirect_to '/admin/utilities/retailers', :success => "Updated Retailer!"
  end
  def destroy
    Admin::Utilities::Retailer.find(params[:id]).destroy
    flash[:error] = "Destroyed Retailer!"
    redirect_to "/admin/utilities/retailers"
  end
end
