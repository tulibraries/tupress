module EventsHelper
	def time_zones
		[
			['EST', 'EST'],
			['CST', 'CST'],
			['PST', 'PST']
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
