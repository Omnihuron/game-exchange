class AdminController < ApplicationController
  before_filter :validate
  
  def index
  end
  
  def orders
  end
  
  def games
    @all_games = Game.ordered
    @game = Game.new unless @game
  end
  
  def items
    @all_items = Item.ordered
    @item = Item.new unless @item
  end
  
  def quotes
  end
  
  def users
  end
  
  def validate
    unless logged_in? && current_user.admin 
      redirect_to home_path 
    end 
  end
end