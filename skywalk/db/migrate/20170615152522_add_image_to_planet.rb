class AddImageToPlanet < ActiveRecord::Migration
  def change
    add_column :planets, :image, :text
  end
end
