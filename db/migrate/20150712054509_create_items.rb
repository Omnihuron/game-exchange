class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :game, index: true
      t.integer :game_id
      t.string :title
      t.string :image
      t.string :slug
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
