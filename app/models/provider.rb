class Provider < ApplicationRecord
  belongs_to :city
  validates :name, :presence => true
  validates :cuit, :presence => true
  validates :renspa, :presence => true
  def to_s
    name
  end

end
