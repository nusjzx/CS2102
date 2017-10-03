class ProjectsController < ApplicationController
	before_action :logged_in_user, except: :index
	before_action :correct_user,   only: [:edit, :update]
  	before_action :admin_user,     only: :destroy

	def index
		@projects = Project.all.paginate(page: params[:page])
	end

	def show

	end

	def new
		@micropost = current_user.microposts.build
	end

	def create
	end

	def edit

	end

	def update
	end

	def destroy 

	end

	private

		def micropost_params
      		params.require(:micropost).permit(:content)
    	end
end
