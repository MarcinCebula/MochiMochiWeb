class Admin::Archive::Games::BaseController < ApplicationController
  before_filter :authenticate_admin

  def index
    @deals = @deals_class.all
  end

  def show
    @deal = @deals_class.where({ title_id: params['id']}).first
  end

  def destroy
    @deal = @deals_class.where({ title_id: params['id']}).first
    if @deal.destroy
      redirect_to "/admin//games/#{resource_name}"
    else
      flash[:error] = @deal.errors.full_messages
      redirect_to :back
    end

  end
  private
  def resource_name
    params['controller'].slice((params['controller'].rindex(/\//) + 1)..-1)
  end
end
