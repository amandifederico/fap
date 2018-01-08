class Driver < ApplicationRecord
	def to_s
		name+" "+last_name
	end
end
