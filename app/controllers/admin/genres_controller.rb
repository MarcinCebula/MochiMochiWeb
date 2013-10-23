class Admin::GenresController < ApplicationController
  before_filter :authenticate_admin
  
  def index
    @genres = Game.find(params[:game_id]).genres
  end
  
  def new
    @genre = Game.find(params[:game_id]).genres.new
  end
  
  def create
    @genre = Game.find(params[:game_id]).genres.create(:genre_id => params[:genre][:title])
    redirect_to "/admin/games/#{@genre.game.id}/genres", :notice => "Added genre!"
  end
  
  def destroy
    Game.find(params[:game_id]).genres.find(params[:id]).destroy
    redirect_to "/admin/games/#{params[:game_id]}/genres", :notice => "Deleted genre!"
  end
  
end