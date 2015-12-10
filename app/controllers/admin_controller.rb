class AdminController < ApplicationController
  
  def convocations
  	@convocations = Convocation.all
  end

  def players
  	@players = Player.all
  end


end
