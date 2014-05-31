class OverflowsController < ApplicationController
	def index
		@agency = Agency.all
		@overflows = Overflow.most_recent
	end

	def new
		@agency = current_agency
		@overflow = @agency.overflows.new
	end

	def create
		@agency = current_agency
		@overflow = @agency.overflows.new(overflow_params)
		if @overflow.save
      		redirect_to root_path, notice: "Thank you for your post!"
    	else
      		render :new
    	end
	end

private
	def overflow_params
		params.require(:overflow).permit(:item_type, :description, :perishable, :expiration)
	end	
end
