class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.text :name
      t.text :type
      t.integer :size
      t.integer :distancefromsun
      t.integer :lengthofyear
      t.text :description

      t.timestamps null: false
    end
  end
end
