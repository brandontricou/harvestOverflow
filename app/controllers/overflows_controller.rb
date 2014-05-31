class OverflowsController < ApplicationController
	def index
		@agency = Agency.all
		@overflows = Overflow.most_recent
	end
end
