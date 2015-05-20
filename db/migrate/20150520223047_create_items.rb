class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :gold_cost

      t.timestamps null: false
    end
  end
end
