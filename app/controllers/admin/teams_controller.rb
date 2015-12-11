class Admin::TeamsController < AdminController
	def index
		@teams = Team.all
        @categories = Category.all
	end

    def new
        @team = Team.new
    end

    def create
        @team = Team.new(params.require(:team).permit(:team_name, :category_id))
        if @team.save
          redirect_to admin_teams_path
        else
          render :new
        end
    end

	def show
		@team = Team.find(params[:id])
	end

	def edit
        @team = Team.find(params[:id])
	   	@category = @team.category
	end

	def update
        @team = Team.find(params[:id])
        @team.update_attributes(params.require(:team).permit(:team_name, :category_id))
        redirect_to admin_teams_path
    end

end