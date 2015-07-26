class GamesController < ApplicationController
  
  def index
    @games = Game.all
  end
  
  def show
    redirect_to game_items_path(params['id'])  
  end
  
  def create
    @game = Game.new(game_params)
    
    if @game.save
      flash[:success] = "Game Added"
      redirect_to admin_games_path
    else
      flash[:alert] = "Game could not be added"
      redirect_to admin_games_path
    end
  end
  
  def game_params
    params.require(:game).permit(:title, :slug, :link, :image, :banner)
  end
  
end
