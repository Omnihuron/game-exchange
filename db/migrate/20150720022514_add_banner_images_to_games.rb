class AddBannerImagesToGames < ActiveRecord::Migration
  def change
    add_column :games, :banner, :string
  end
end
