class TeamsController < ApplicationController
	def show
		@team = Team.find(params[:id])
		@last_convocation = Convocation.where(team_id: @team.id).last
	end
end
