class Admin::ConvocationsController < AdminController
	def index
		@convocations = Convocation.all
	end

	def show
		@convocation = Convocation.find(params[:id])
	end
end
