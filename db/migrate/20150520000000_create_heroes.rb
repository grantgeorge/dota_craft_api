class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name
      t.text :description
      t.integer :base_movement
      t.integer :base_str
      t.integer :base_int
      t.integer :base_agi
      t.integer :str_per_level
      t.integer :int_per_level
      t.integer :agi_per_level
      t.integer :base_min_damage
      t.integer :base_max_damage
      t.integer :base_armor
      t.integer :day_sight_range
      t.integer :night_sight_range
      t.integer :attack_range
      t.integer :missle_speed

      t.timestamps null: false
    end
  end
end
