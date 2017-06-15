class AddSolarRegionToOtherPlanetaryBodies < ActiveRecord::Migration
  def change
    add_reference :other_planetary_objects, :solar_region, index: true, foreign_key: true
  end
end
