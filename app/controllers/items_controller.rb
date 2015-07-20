class ItemsController < ApplicationController
  
  def index
    if params['game_id'] then
      @items = Item.where(game_id: params['game_id'])
      @game = Game.find params['game_id']
      
      @banner = "banners/#{@game.banner}"
      @game_title = @game.title
      @game_desc  = @game.slug
    else
      @items = Item.all
      @banner = "banners/ogre.png"
      @game_title = "All Items"
      @game_desc = "View deals from all of our game titles"
    end
  end
  
end
