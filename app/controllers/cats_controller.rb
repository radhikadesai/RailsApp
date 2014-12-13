class CatsController < ApplicationController
	def show 
		@ginger = p Cat.find params[:id]
	end
	def index
		@cats = p Cat.all
	end
end
