class AddDetailsToFood < ActiveRecord::Migration
  def change
    remove_column :foods, :categories
    add_column :foods, :categories, :text, array: true, default: []
    change_column_null :foods, :name, false
  end
end
