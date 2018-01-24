class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.integer :bacon
      t.integer :cheese
      t.integer :meat
      t.integer :salad

      t.timestamps
    end
  end
end
