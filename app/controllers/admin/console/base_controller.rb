class Admin::Console::BaseController < ApplicationController
  before_filter :authenticate_admin

  def new
    @game = Admin::Game.find(params[:game_id])
    @console.genre = Admin::GameAttributes::Genre.new
    @console.mode = Admin::GameAttributes::Mode.new
  end

  def create
    @game = Admin::Game.find params[:game_id]
    @console.genre = Admin::GameAttributes::Genre.new result = Admin::GameAttributes::Genre.fix_checkbox_params(params['genre'])
    @console.mode = Admin::GameAttributes::Mode.new Admin::GameAttributes::Mode.fix_checkbox_params(params['modes'])
    set_property(@game, @console.resource_name, @console)
    @game.save

    redirect_to "/admin/games/#{params[:game_id]}"
  end

  def show
    @game = Admin::Game.find(params[:game_id])
    @console = @game.send(resource_name)
  end

  def edit
    @game = Admin::Game.find params[:game_id]
    @console =  @game.send(resource_name)
  end

  def update
    @game = Admin::Game.find params[:game_id]
    @console.genre = Admin::GameAttributes::Genre.new result = Admin::GameAttributes::Genre.fix_checkbox_params(params['genre'])
    @console.mode = Admin::GameAttributes::Mode.new Admin::GameAttributes::Mode.fix_checkbox_params(params['modes'])
    set_property(@game, @console.resource_name, @console)
    @game.save

    redirect_to "/admin/games/#{@game.id}"
  end

  def destroy
    @game = Admin::Game.find params[:game_id]
    set_property(@game, @console.resource_name, nil)
    @game.save
    flash[:error] = "Removed Game"
    redirect_to "/admin/games/#{params[:game_id]}"
  end


  private
  def resource_name
    params['controller'].slice((params['controller'].rindex(/\//) + 1)..-1)
  end
end
