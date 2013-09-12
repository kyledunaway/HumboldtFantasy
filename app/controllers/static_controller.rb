class StaticController < ApplicationController
	def example
	end

	def all_picks
		@picks = Pick.all(:order => "created_at DESC")
		@users = User.all
	end

	def all_posts
		@posts = Post.all
		@users = User.all
	end
end
