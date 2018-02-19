class Transport < ApplicationRecord
	validates :coupled, :presence => true
	validates :capacity, :presence => true
	validates :plate, :presence => true
	validates :weight, :presence => true
	def to_s
		model+" "+plate
	end
end
