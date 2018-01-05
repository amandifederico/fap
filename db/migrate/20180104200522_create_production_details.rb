class CreateProductionDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :production_details do |t|
      t.references :production, foreign_key: true
      t.references :type, foreign_key: true
      t.references :animal, foreign_key: true
      t.integer :weight
      t.integer :weight_control
      t.string :observation

      t.timestamps
    end
  end
end
