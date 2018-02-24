class TipoIntProvider < ActiveRecord::Migration[5.0]
  def change
	change_column :providers, :cuit, :integer, limit: 8
  end
end
