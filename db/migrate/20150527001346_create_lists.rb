class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :checked
      
      t.timestamps null: false
    end
  end
end
