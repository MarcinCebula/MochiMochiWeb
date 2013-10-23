class Admin::ModesController < ApplicationController
  before_filter :authenticate_admin

  def index
    @mode = Game.find(params[:game_id]).mode
  end

  def show
    @mode = Game.find(params[:game_id]).mode
  end

  def edit
    @mode = Game.find(params[:game_id]).mode
  end

  def update
    @mode = Game.find(params[:game_id]).mode
    @mode.update_attributes(params[:mode])
    redirect_to "/admin/games/#{@mode.game.id}/modes", :notice => "Updated Mode!"
  end

end  