class Game < ActiveRecord::Base
  has_many :items
  
  validates :title,  presence: true, length: {maximum:20, minimum: 3 }
  validates :slug,  presence: true, length: {maximum:100 }
  
  def self.ordered
    Game.all.sort_by(&:created_at)
  end
end
