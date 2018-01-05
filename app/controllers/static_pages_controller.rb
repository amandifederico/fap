class StaticPagesController < ApplicationController
	def production_line
		@production = Production.all
	end
end
