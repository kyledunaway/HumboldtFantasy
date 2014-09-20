class StaticController < ApplicationController
	def example
	end

	def all_picks
		@week1 = Pick.where(:week_number => "1").sort_by{|n| n[:username]}
		@week2 = Pick.where(:week_number => "2").sort_by{|n| n[:username]}
		@week3 = Pick.where(:week_number => "3").sort_by{|n| n[:username]}
		@week4 = Pick.where(:week_number => "4").sort_by{|n| n[:username]}
		@week5 = Pick.where(:week_number => "5").sort_by{|n| n[:username]}
		@week6 = Pick.where(:week_number => "6").sort_by{|n| n[:username]}
		@week7 = Pick.where(:week_number => "7").sort_by{|n| n[:username]}
		@week8 = Pick.where(:week_number => "8").sort_by{|n| n[:username]}
		@week9 = Pick.where(:week_number => "9").sort_by{|n| n[:username]}
		@week10 = Pick.where(:week_number => "10").sort_by{|n| n[:username]}
		@week11 = Pick.where(:week_number => "11").sort_by{|n| n[:username]}
		@week12 = Pick.where(:week_number => "12").sort_by{|n| n[:username]}
		@week13 = Pick.where(:week_number => "13").sort_by{|n| n[:username]}
		@week14 = Pick.where(:week_number => "14").sort_by{|n| n[:username]}
		@week15 = Pick.where(:week_number => "15").sort_by{|n| n[:username]}
		@week16 = Pick.where(:week_number => "16").sort_by{|n| n[:username]}
		@week17 = Pick.where(:week_number => "17").sort_by{|n| n[:username]}
	end

	def pick_history
		@week1 = Pick.where(:week_number => "1").sort_by{|n| n[:username]}
		@week2 = Pick.where(:week_number => "2").sort_by{|n| n[:username]}
		@week3 = Pick.where(:week_number => "3").sort_by{|n| n[:username]}
		@week4 = Pick.where(:week_number => "4").sort_by{|n| n[:username]}
		@week5 = Pick.where(:week_number => "5").sort_by{|n| n[:username]}
		@week6 = Pick.where(:week_number => "6").sort_by{|n| n[:username]}
		@week7 = Pick.where(:week_number => "7").sort_by{|n| n[:username]}
		@week8 = Pick.where(:week_number => "8").sort_by{|n| n[:username]}
		@week9 = Pick.where(:week_number => "9").sort_by{|n| n[:username]}
		@week10 = Pick.where(:week_number => "10").sort_by{|n| n[:username]}
		@week11 = Pick.where(:week_number => "11").sort_by{|n| n[:username]}
		@week12 = Pick.where(:week_number => "12").sort_by{|n| n[:username]}
		@week13 = Pick.where(:week_number => "13").sort_by{|n| n[:username]}
		@week14 = Pick.where(:week_number => "14").sort_by{|n| n[:username]}
		@week15 = Pick.where(:week_number => "15").sort_by{|n| n[:username]}
		@week16 = Pick.where(:week_number => "16").sort_by{|n| n[:username]}
		@week17 = Pick.where(:week_number => "17").sort_by{|n| n[:username]}
	end

	def all_posts
		@posts = Post.all
		@users = User.all
	end
end
