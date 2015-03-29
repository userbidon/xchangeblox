class ChangeColumnType < ActiveRecord::Migration
  def change
    rename_column :supports, :type, :support_type
    rename_column :blocks, :type, :block_type
    rename_column :items, :type, :item_type
  end
end
