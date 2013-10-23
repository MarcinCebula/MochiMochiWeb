class Admin::Deals::Games::BaseController < ApplicationController
  before_filter :authenticate_admin

  def index
    @deals = @deals_class.all.desc(:position)
  end
  def new
    @deal = @deals_class.new
    @game = Admin::Game.find(params[:game_id])
    @console = @game.send(resource_name)
  end
  def create
    @game = ::Admin::Game.find(params[:game_id])
    @console = @game.send(resource_name)
    @deal = @deals_class.new params[:deal]
    @deal.save_custom_attributes(@console)
    if @deal.save
      redirect_to "/admin/deals/games/#{resource_name}"
    else
      flash[:error] = @deal.errors.full_messages
      redirect_to :back
    end
  end
  def show
    @deal = @deals_class.where({ title_id: params['id']}).first
  end

  def update_position
    @deal = @deals_class.where({ _id: params['id']}).first
    @deal.update_attributes({position: params[:position]})
    redirect_to :back
  end

  def like_deal
    @deal = @deals_class.where({ title_id: params['id']}).first
    if @deal.inc(:review, 1)
      render :json => { :success => true, :response => { :review  => @deal.review } }
    else
      render :json => { :success => false }
    end
  end
  def archive
    @deal = @deals_class.where({ title_id: params["#{resource_name}_id"]}).first
    @archive = @archive_class.new @deal.attributes
    if @archive.save
      redirect_to "/admin/archive/games/#{resource_name}"
      @deal.destroy
    else
      flash[:error] = @archive.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @deal = @deals_class.where({ title_id: params['id']}).first
    if @deal.destroy
      redirect_to "/admin/deals/games/#{resource_name}"
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
