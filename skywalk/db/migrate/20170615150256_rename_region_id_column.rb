class RenameRegionIdColumn < ActiveRecord::Migration
  def change
    rename_column :solar_regions, :otherplanetaryobject_id, :other_planetary_object_id
  end
end
