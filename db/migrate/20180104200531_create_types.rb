class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :description
      t.references :animal_type, foreign_key: true

      t.timestamps
    end
  end
end
