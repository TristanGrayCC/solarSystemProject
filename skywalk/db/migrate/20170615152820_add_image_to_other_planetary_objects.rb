class AddImageToOtherPlanetaryObjects < ActiveRecord::Migration
  def change
    add_column :other_planetary_objects, :image, :text
  end
end
