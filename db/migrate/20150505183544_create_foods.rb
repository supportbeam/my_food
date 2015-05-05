class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category, array: true
      t.integer :calories
      t.integer :carbohydrate
      t.integer :protein
      t.integer :fat

      t.timestamps null: false
    end
  end
end
