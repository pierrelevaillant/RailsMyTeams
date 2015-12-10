class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

	def index

	end

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
