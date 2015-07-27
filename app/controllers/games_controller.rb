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
  
  def edit
  end
  
  def update
    game = Game.find(params['id'])
    if game.update_attributes(game_params)
      flash[:success] = "Game successfully updated"
      redirect_to admin_games_path
    else
      flash[:alert] = "Game could not be updated"
      redirect_to admin_games_path
    end
  end
  
  def destroy
    Game.find(params['game_id']).destroy
    flash[:success] = "Game successfully deleted"
    redirect_to admin_games_path
  end
  
  
  def game_params
    params.require(:game).permit(:title, :slug, :link, :image, :banner)
  end
  
end
