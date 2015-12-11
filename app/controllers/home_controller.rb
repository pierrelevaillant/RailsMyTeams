class HomeController < ApplicationController
	def index
		@categories = Category.all
		@teams = Team.all
	end

	def about
	end
end
