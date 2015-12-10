class Admin::PlayersController < AdminController
	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def edit
	   	@player = Player.find(params[:id])
	end

	def update
        @player = Player.find(params[:id])
        @player.update_attributes(params.require(:player).permit(:first_name, :last_name))
        redirect_to admin_players_path
    end

end