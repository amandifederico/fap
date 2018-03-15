class ChangeTypeCoupledTransport < ActiveRecord::Migration[5.0]
  def change
	change_column :transports, :coupled, :string
	change_column :transports, :weight, :string
  end
end
