class StaticController < ApplicationController
	def example
	end

	def all_picks
		@week1 = Pick.where(:week_number => 1)
		@week2 = Pick.where(:week_number => 2)
		@week3 = Pick.where(:week_number => 3)
		@week4 = Pick.where(:week_number => 4)
		@week5 = Pick.where(:week_number => 5)
		@week6 = Pick.where(:week_number => 6)
		@week7 = Pick.where(:week_number => 7)
		@week8 = Pick.where(:week_number => 8)
		@week9 = Pick.where(:week_number => 9)
		@week10 = Pick.where(:week_number => 10)
		@week11 = Pick.where(:week_number => 11)
		@week12 = Pick.where(:week_number => 12)
		@week13 = Pick.where(:week_number => 13)
		@week14 = Pick.where(:week_number => 14)
		@week15 = Pick.where(:week_number => 15)
		@week16 = Pick.where(:week_number => 16)
		@week17 = Pick.where(:week_number => 17)

	end

	def all_posts
		@posts = Post.all
		@users = User.all
	end
end
