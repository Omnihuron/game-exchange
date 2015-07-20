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
  
  def show
    unless Item.try(:where, id: params['id'], game_id: params['game_id']).empty? then
      @item = Item.where(id: params['id'], game_id: params['game_id']).first
      @game = Game.find params['game_id']
    else
      redirect_to home_path
    end
  end
  
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  
end
