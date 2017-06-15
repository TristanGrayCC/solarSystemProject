class CreateOtherPlanetaryObjects < ActiveRecord::Migration
  def change
    create_table :other_planetary_objects do |t|
      t.text :name
      t.text :typeofobject
      t.integer :size
      t.integer :distancefromsun
      t.text :description

      t.timestamps null: false
    end
  end
end
