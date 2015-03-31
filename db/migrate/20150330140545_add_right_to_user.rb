class AddRightToUser < ActiveRecord::Migration
  def change
    add_column :users, :permission, :bit
  end
end
