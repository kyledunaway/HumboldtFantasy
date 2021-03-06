class UsersController < ApplicationController

	def new
	  @user = User.new

	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    redirect_to root_url , :notice => "Signed up!, Now Log In!"
	  else
	    render "new"
	  end
	end

	def show
		@user = User.find(params[:id])
		@picks = @user.picks
		if current_user.id != @user.id
			redirect_to user_path(current_user), notice: "Acess Denied to Other Users"
		end
	end

	def index
		@users = User.all
	end
end
