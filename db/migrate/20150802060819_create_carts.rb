class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	t.integer :user_id,   default: nil
    	t.integer :item_id
    	t.integer :quantity,  default: 1
    	t.boolean :purchased, default: false
    	t.boolean :active,    default: true 
    	t.timestamps          null: false
    end
  end
end
