class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :block_type
      t.string :support_type
      t.integer :block_size

      t.timestamps
    end
  end
end
