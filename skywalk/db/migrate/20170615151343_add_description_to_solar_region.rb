class AddDescriptionToSolarRegion < ActiveRecord::Migration
  def change
    add_column :solar_regions, :description, :text
  end
end
