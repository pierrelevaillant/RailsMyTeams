class Admin::CategoriesController < AdminController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		@players = @category.players
	end
end
