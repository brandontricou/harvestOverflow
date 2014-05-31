class OverflowsController < ApplicationController
	def index
		@overflows = Overflow.all
	end
end
