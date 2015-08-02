class Cart < ActiveRecord::Base
	validates :item_id,   presence: true
	validates :quantity,  presence: true

	has_one :item

	def total
		quantity * Item.find(item_id).price
	end

end