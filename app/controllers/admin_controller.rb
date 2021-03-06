class AdminController < ApplicationController

  before_filter :custom_manager, :only => [:index, :convocations, :teams, :categories, :users]

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

  def users
  end

  private
	def custom_manager
		authenticate_user!
	end

end
