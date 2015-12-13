class Admin::ConvocationsController < AdminController
	def index
		@convocations = Convocation.all.paginate(:page => params[:page])
	end

	def new
		@teams = Team.all
		@convocation = Convocation.new
	end

	def create
		@convocation = Convocation.new(convocation_params)
		@convocation.user_id = current_user.id
		if @convocation.save
			redirect_to admin_convocations_path
		else
			render :new
		end
	end

	def edit
		@teams = Team.all
		@convocation = Convocation.find(params[:id])
	end

	def update
		@convocation = Convocation.find(params[:id])
		@convocation.user_id = current_user.id
		@convocation.update_attributes(convocation_params)
		redirect_to admin_convocations_path
	end

	def destroy 
		@convocation = Convocation.find(params[:id])
		@convocation.destroy!
		redirect_to admin_convocations_path
	end

	private
	def convocation_params
		params.require(:convocation).permit(:appointment_place, :appointment_time, :opposing_team, :game_time, :team_id, :date,:informations, :opposing_team, :home, player_ids: [])
	end
end
