class ProductionDetail < ApplicationRecord
	belongs_to :production
	belongs_to :type
	belongs_to :animal
	
end
