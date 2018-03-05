class Driver < ApplicationRecord
	validates :name, :presence => true, :length => { :minimum => 4 }
	validates :last_name, :presence => true, :length => { :minimum => 5 }
	validates :dni, :presence => true
	def to_s
		name+" "+last_name
	end
end
