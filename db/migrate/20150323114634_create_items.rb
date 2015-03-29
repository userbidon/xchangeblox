class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.integer :item_id
      t.integer :price
      t.belongs_to :user, index:true

      t.timestamps
    end
  end
end
