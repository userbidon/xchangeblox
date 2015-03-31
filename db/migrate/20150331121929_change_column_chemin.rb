class ChangeColumnChemin < ActiveRecord::Migration
  def change
    rename_column :elements, :chemin_element, :name
  end
end
