class UserslistController < ApplicationController

	def index
		
	end

	def show
		@user = Userlist.find(params[:id])
	end
	 
	def blog
		
    end

end
