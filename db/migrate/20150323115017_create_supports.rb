class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :type
      t.integer :size
      t.string :image

      t.timestamps
    end
  end
end
