class AlterColumnFoodCategory < ActiveRecord::Migration
  def change
    change_column :foods, :category, :text
    change_column_default :foods, :category, []
    rename_column :foods, :category, :categories
  end
end
