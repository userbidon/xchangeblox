class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :type_element
      t.string :module
      t.string :promotion
      t.string :chemin_element
      t.string :user_id

      t.timestamps
    end
  end
end
