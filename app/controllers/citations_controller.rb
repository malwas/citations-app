class CitationsController < ApplicationController
	def index
		@citations = Citation.all
	end
	
	def show
		redirect_to action: "index"
	end
 
	def new
	end
	
	def create
		@citation = Citation.new(params.require(:citation).permit(:text))
 
		@citation.save
		redirect_to @citation
	end
end
