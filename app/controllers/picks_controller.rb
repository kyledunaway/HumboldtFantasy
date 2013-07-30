class PicksController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@pick = Pick.new
	end

	def create
		@user = User.find(params[:user_id])
		@pick = @user.picks.new(params[:pick])
		@pick.user_id = current_user.id
		@pick.username = current_user.username


		if @pick.save
			redirect_to user_pick_path(@user, @pick), notice: "Created"
		else
			render action: "new"
		end
	end

	def index
		@user = User.find(params[:user_id])
		@picks = @user.picks.all

	end

	def show
		@user = User.find(params[:user_id])
		@pick = Pick.find(params[:id]) 
	end

	def edit
    	@pick = Pick.find(params[:id])
    	@user = @pick.user
  	end

  	def update
		@user = User.find(params[:user_id])

  		@pick = Pick.find(params[:id])

  		if @pick.update_attributes(params[:pick])
  			redirect_to user_pick_path
  		else
  			render action: "edit"
  		end
  	end

  	def destroy
		@user = User.find(params[:user_id])
  		@pick = Pick.find(params[:id])
  		@pick.destroy

  		respond_to do |format|
  			format.html {redirect_to user_picks_path }
  			format.json {head :no_content}
  		end
  	end
end