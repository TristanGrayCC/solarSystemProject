class CreateSolarRegions < ActiveRecord::Migration
  def change
    create_table :solar_regions do |t|
      t.text :name
      t.integer :size
      t.integer :distancefromsun
      t.references :otherplanetaryobject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
