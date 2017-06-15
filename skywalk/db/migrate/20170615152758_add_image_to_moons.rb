class AddImageToMoons < ActiveRecord::Migration
  def change
    add_column :moons, :image, :text
  end
end
