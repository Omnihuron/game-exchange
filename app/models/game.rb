class Game < ActiveRecord::Base
  has_many :items
  
  validates :title,  presence: true, length: {maximum:20, minimum: 3 }
  validates :slug,  presence: true, length: {maximum:50 }
end
