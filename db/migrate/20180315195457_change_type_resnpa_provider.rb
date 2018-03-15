class ChangeTypeResnpaProvider  < ActiveRecord::Migration[5.0]
  def change
	change_column :providers, :renspa, :string
  end
end

