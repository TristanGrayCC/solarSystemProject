class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.text :name
      t.references :planet, index: true, foreign_key: true
      t.integer :size
      t.integer :orbit
      t.text :description

      t.timestamps null: false
    end
  end
end
