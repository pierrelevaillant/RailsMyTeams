class AdminController < ApplicationController

  before_action :authenticate_user!
  
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
