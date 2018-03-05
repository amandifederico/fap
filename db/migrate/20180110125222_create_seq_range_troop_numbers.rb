class CreateSeqRangeTroopNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :seq_range_troop_numbers do |t|
      t.integer :rtn

      t.timestamps
    end
  end
end
