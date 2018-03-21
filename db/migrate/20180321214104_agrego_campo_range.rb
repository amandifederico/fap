class AgregoCampoRange < ActiveRecord::Migration[5.0]
  def change
	add_reference :range_troop_numbers, :provider, foreign_key: true
  end
end
