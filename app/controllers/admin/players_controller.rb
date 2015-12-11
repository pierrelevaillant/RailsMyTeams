class Admin::PlayersController < AdminController
	def index
		@players = Player.all
	end

    def new
        @player = Player.new
    end

    def create
        @player = Player.new(player_params)
        if @player.save
          redirect_to admin_players_path
        else
          redirect_to new_admin_players_path
        end
    end

	def show
		@player = Player.find(params[:id])
	end

	def edit
        @player = Player.find(params[:id])
	   	@category = @player.category
	end

	def update
        @player = Player.find(params[:id])
        @player.update_attributes(player_params)
        redirect_to admin_players_path
    end

    def destroy 
        @convocation = Player.find(params[:id])
        @convocation.destroy!
        redirect_to admin_players_path
    end

    private
    def player_params
        params.require(:player).permit(:first_name, :last_name, :category_id)
    end

end