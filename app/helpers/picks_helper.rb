module PicksHelper

	def pick_updated_at(format = "%d/%m/%Y %I:%M %p")
  		return updated_at.in_time_zone.strftime(format)
	end
end
