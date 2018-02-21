class ProductionDetail < ApplicationRecord
	belongs_to :production
	belongs_to :type
	belongs_to :animal

	validates :type_id, :presence => true
	validates :animal_id, :presence => true
	validates :weight, :presence => true
	
end
