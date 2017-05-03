module EventsHelper
	def time_zones
		[
			['EST', 'EST'],
			['CST', 'CST'],
			['PST', 'PST']
		]
	end
	def month_list
		[
			["January", "january"],
			["February", "february"],
			["March", "march"],
			["April", "april"],
			["May", "may"],
			["June", "june"],
			["July", "july"],
			["August", "august"],
			["September", "september"],
			["October", "october"],
			["November", "november"],
			["December", "december"]
		]
	end
	def year_list
		date = Time.now
		[
			[date.year - 1, date.year - 1],
			[date.year, date.year],
			[date.year + 1, date.year + 1]
		]
	end
end
