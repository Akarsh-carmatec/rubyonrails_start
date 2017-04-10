class HomesController < ApplicationController

	def index
		@product = Product.all
		@userlist = Userlist.all
	end
end
