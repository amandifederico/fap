class Production < ApplicationRecord
	has_many :production_details, inverse_of: :production
	accepts_nested_attributes_for :production_details, :reject_if => proc { |attributes| attributes['weight'].blank? }
	belongs_to :troop

	def to_s
		troop description
	end
end
