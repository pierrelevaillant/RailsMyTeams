class Admin::ConvocationsController < AdminController
	def index
		@convocations = Convocation.all
	end

	def new
		@teams = Team.all
		@convocation = Convocation.new
	end

	def create
		@convocation = Convocation.new(convocation_params)
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
		params.require(:convocation).permit(:informations, :opposing_team, :home)
	end
end
