class RenamePlanetTypeColumn < ActiveRecord::Migration
  def change
    rename_column :planets, :type, :typeofplanet
  end
end
