class StaticController < ApplicationController
	def example
	end

	def all_picks
		@picks = Pick.all
		@users = User.all

	end
end