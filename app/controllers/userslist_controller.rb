class UserslistController < ApplicationController

	def index
		
	end

	def show
		@user = Userlist.find(params[:id])
	end
	 
	def blog
		
    end

  # DELETE /ponies/1
  # DELETE /ponies/1.json
  def destroy
  	 @userlist = Userlist.find(params[:id])
     @userlist.destroy
     
     respond_to do |format|
        format.html { redirect_to userslist_url }
        format.json { head :no_content }
        format.js   { render :layout => false }
     end   
  end

end
