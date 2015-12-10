class Admin::PlayersController < AdminController
	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
	end
end