class RemoveReviewsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :reviews
  end
end
