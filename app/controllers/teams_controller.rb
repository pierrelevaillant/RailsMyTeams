class TeamsController < ApplicationController
	def show
		@team = Team.find(params[:id])
		#@last_convocation = Convocation.where(team_id: @team.id).last
		@convocations = Convocation.where(team_id: @team.id).paginate(:page => params[:page]).order('created_at DESC')
		@last_convocation = @convocations[0]
	end
end
