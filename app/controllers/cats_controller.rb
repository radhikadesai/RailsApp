class CatsController < ApplicationController
	def show 
		@ginger = p Cat.find params[:id]
	end
	def index
		@cats = Cat.all
	end
	def new
	end
	def create
		cat = Cat.new
		cat.name = params[:cat][:name]
		cat.url = params[:cat][:url]
		cat.save
		redirect_to cat_path(cat)
	end

end
