class ItemsController < ApplicationController
  
  def index
    if params['game_id'] then
      @items = Item.where(game_id: params['game_id'])
      @game = Game.find params['game_id']
      
      @banner = @game.banner
      @game_title = @game.title
      @game_desc  = @game.slug
    else
      @items = Item.all
      @banner = "http://imgur.com/DRHFdqg.jpg"
      @game_title = "All Items"
      @game_desc = "View deals from all of our game titles"
    end
  end
  
  def create
    @item = Item.new(item_params)
    
    if @item.save
      flash[:success] = "Item Added"
      redirect_to admin_items_path
    else
      flash[:alert] = "Item could not be added"
      redirect_to admin_items_path
    end
  end
  
  def update
    item = Item.find(params['id'])
    if item.update_attributes(item_params)
      flash[:success] = "Item successfully updated"
      redirect_to admin_items_path
    else
      flash[:alert] = "Item could not be updated"
      redirect_to admin_items_path
    end
  end
  
  def destroy
    Item.find(params['item_id']).destroy
    flash[:success] = "Item successfully deleted"
    redirect_to admin_items_path
  end
  
  def edit
  end
  
  def show
    unless Item.try(:where, id: params['id'], game_id: params['game_id']).empty? then
      @item = Item.where(id: params['id'], game_id: params['game_id']).first
      @game = Game.find params['game_id']
    else
      redirect_to home_path
    end
  end

  def item_params
    params.require(:item).permit(:game_id, :title, :slug, :description, :image, :price)
  end
  
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  
end
