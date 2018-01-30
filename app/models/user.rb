class User < ApplicationRecord
 	rolify
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	def admin?
		has_role?(:admin)
	end

	def A?
		has_role?(:A)
	end
	
	def B?
		has_role?(:B)
	end

	def C?
		has_role?(:C)
	end

	def Garita?
		has_role?(:Garita)
	end

	def Corral?
		has_role?(:Corral)
	end

	def Oficina?
		has_role?(:Oficina)
	end

	def PlantaA?
		has_role?(:PlantaA)
	end

	def PlantaB?
		has_role?(:PlantaB)
	end

	def SubA?
		has_role?(:SubA)
	end

	def SubB?
		has_role?(:SubB)
	end

end
