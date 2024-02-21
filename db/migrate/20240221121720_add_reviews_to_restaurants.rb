class AddReviewsToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :reviews, :text
  end
end
