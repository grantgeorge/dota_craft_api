class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.references :hero, index: true
      t.string :name
      t.text :description
      t.string :damage_type
      t.integer :mana_cost

      t.timestamps null: false
    end
    add_foreign_key :spells, :heroes
  end
end
