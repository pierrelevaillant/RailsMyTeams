class Admin::DashboardController < AdminController

	before_filter :custom_manager, :only => [:index]

	def index
		@categories = Category.all
	end

	private
	def custom_manager
		authenticate_user!
		unless current_user.superadmin
			redirect_to root_url
		end
	end

end
