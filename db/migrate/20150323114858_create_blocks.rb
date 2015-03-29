class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :type
      t.integer :size
      t.string :support_type
      t.string :image

      t.timestamps
    end
  end
end
