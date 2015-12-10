class AdminController < ApplicationController
<<<<<<< Updated upstream

  before_action :authenticate_user!
  
=======
  layout 'admin'

	def index
		
	end

>>>>>>> Stashed changes
  def convocations
  	@convocations = Convocation.all
  end

  def teams
  	@teams = Team.all
  end

  def categories
  	@categories = Category.all
  end


end
