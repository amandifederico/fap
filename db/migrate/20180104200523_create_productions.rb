class CreateProductions < ActiveRecord::Migration[5.0]
  def change
    create_table :productions do |t|
      t.references :troop, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
