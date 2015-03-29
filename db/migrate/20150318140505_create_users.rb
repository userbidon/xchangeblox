class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :password
      t.string :mail
      t.integer :phone
      t.text :reviews

      t.timestamps
    end
  end
end
