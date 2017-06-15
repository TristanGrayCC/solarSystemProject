class ShiftingColumns < ActiveRecord::Migration
  def change
    remove_column :solar_regions, :other_planetary_object_id
    add_foreign_key :other_planetary_objects, :solar_regions
  end
end
