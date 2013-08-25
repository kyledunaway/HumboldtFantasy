class StaticController < ApplicationController
	def example
	end

	def all_picks
		@picks = Pick.all
		@users = User.all
	end

	def all_posts
		@posts = Post.all
		@users = User.all
	end
end
