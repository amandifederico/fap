class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.double :cuit
      t.string :renspa
      t.integer :telephone
      t.string :email
      t.string :address
      t.date :up_date
      t.date :down_date
      t.references :city, foreign_key: true
      t.boolean :active
      t.string :observation

      t.timestamps
    end
  end
end
