class GamesController < ApplicationController
  
  def index
    @games = Game.all
  end
  
  def show
    redirect_to game_items_path(params['id'])  
  end
  
end
