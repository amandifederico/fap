class CreateTroops < ActiveRecord::Migration[5.0]
  def change
    create_table :troops do |t|
      t.integer :dte
      t.date :arrival_date
      t.time :arrival_time
      t.references :turn, foreign_key: true
      t.references :provider, foreign_key: true
      t.references :city, foreign_key: true
      t.integer :troop_number
      t.date :cargo_date
      t.date :expiration_date
      t.references :transport, foreign_key: true
      t.integer :seal_number
      t.integer :liveweight
      t.integer :quantity_control
      t.string :close_code

      t.timestamps
    end
  end
end
