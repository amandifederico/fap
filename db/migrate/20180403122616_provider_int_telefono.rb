class ProviderIntTelefono < ActiveRecord::Migration[5.0]
  def change
	change_column :providers, :telephone, :integer, limit: 8
  end
end
