class CreateTroopDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :troop_details do |t|
      t.references :troop, foreign_key: true
      t.references :animal, foreign_key: true
      t.integer :quantity
      t.integer :fallen
      t.string :observartion

      t.timestamps
    end
  end
end
