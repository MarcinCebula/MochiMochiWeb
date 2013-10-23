class Admin::GamesController < ApplicationController
  before_filter :authenticate_admin

  def index
    if params[:search]
      @games = Admin::Game.search_by_title(params[:search]).page(params[:page]).asc(:title)
    else
      @games = Admin::Game.all.page(params[:page]).asc(:title)
    end
  end

  def new
    @game = Admin::Game.new
  end

  def create
    @game = Admin::Game.new(params[:game])
    if @game.save
      redirect_to @game
    else
      flash[:error] = @game.errors.full_messages
      redirect_to new_admin_game_path
    end
  end

  def show
    @game = Admin::Game.find(params[:id])
  end

  def edit
    @game = Admin::Game.find(params[:id])
  end

  def update
    @game = Admin::Game.find(params[:id])
    @game.update_attributes(params[:game])
    redirect_to "/admin/games/", :success => "Updated Game!"
  end
  def destroy
    Admin::Game.find(params[:id]).destroy
    flash[:error] = "Destroyed Game!"
    redirect_to "/admin/games"
  end
end
