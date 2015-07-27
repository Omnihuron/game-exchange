class Item < ActiveRecord::Base
  belongs_to :game
  
  def self.ordered
    Item.all.sort_by(&:created_at)
  end
end
