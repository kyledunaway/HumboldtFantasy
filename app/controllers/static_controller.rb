class StaticController < ApplicationController
	def example
	end

	def all_picks
		@week1 = Pick.where(:week_number => "1").sort_by{|n| n[:username].downcase}
		@week2 = Pick.where(:week_number => "2").sort_by{|n| n[:username].downcase}
		@week3 = Pick.where(:week_number => "3").sort_by{|n| n[:username].downcase}
		@week4 = Pick.where(:week_number => "4").sort_by{|n| n[:username].downcase}
		@week5 = Pick.where(:week_number => "5").sort_by{|n| n[:username].downcase}
		@week6 = Pick.where(:week_number => "6").sort_by{|n| n[:username].downcase}
		@week7 = Pick.where(:week_number => "7").sort_by{|n| n[:username].downcase}
		@week8 = Pick.where(:week_number => "8").sort_by{|n| n[:username].downcase}
		@week9 = Pick.where(:week_number => "9").sort_by{|n| n[:username].downcase}
		@week10 = Pick.where(:week_number => "10").sort_by{|n| n[:username].downcase}
		@week11 = Pick.where(:week_number => "11").sort_by{|n| n[:username].downcase}
		@week12 = Pick.where(:week_number => "12").sort_by{|n| n[:username].downcase}
		@week13 = Pick.where(:week_number => "13").sort_by{|n| n[:username].downcase}
		@week14 = Pick.where(:week_number => "14").sort_by{|n| n[:username].downcase}
		@week15 = Pick.where(:week_number => "15").sort_by{|n| n[:username].downcase}
		@week16 = Pick.where(:week_number => "16").sort_by{|n| n[:username].downcase}
		@week17 = Pick.where(:week_number => "17").sort_by{|n| n[:username].downcase}
	end

	def pick_history
		@week1 = Pick.where(:week_number => "1").sort_by{|n| n[:username].downcase}
		@week2 = Pick.where(:week_number => "2").sort_by{|n| n[:username].downcase}
		@week3 = Pick.where(:week_number => "3").sort_by{|n| n[:username].downcase}
		@week4 = Pick.where(:week_number => "4").sort_by{|n| n[:username].downcase}
		@week5 = Pick.where(:week_number => "5").sort_by{|n| n[:username].downcase}
		@week6 = Pick.where(:week_number => "6").sort_by{|n| n[:username].downcase}
		@week7 = Pick.where(:week_number => "7").sort_by{|n| n[:username].downcase}
		@week8 = Pick.where(:week_number => "8").sort_by{|n| n[:username].downcase}
		@week9 = Pick.where(:week_number => "9").sort_by{|n| n[:username].downcase}
		@week10 = Pick.where(:week_number => "10").sort_by{|n| n[:username].downcase}
		@week11 = Pick.where(:week_number => "11").sort_by{|n| n[:username].downcase}
		@week12 = Pick.where(:week_number => "12").sort_by{|n| n[:username].downcase}
		@week13 = Pick.where(:week_number => "13").sort_by{|n| n[:username].downcase}
		@week14 = Pick.where(:week_number => "14").sort_by{|n| n[:username].downcase}
		@week15 = Pick.where(:week_number => "15").sort_by{|n| n[:username].downcase}
		@week16 = Pick.where(:week_number => "16").sort_by{|n| n[:username].downcase}
		@week17 = Pick.where(:week_number => "17").sort_by{|n| n[:username].downcase}
	end

	def all_posts
		@posts = Post.all
		@users = User.all
	end
end
