module RepsHelper
	def region_names (region)
		case region
			when '2' then 'China & Taiwan'
			when '3' then 'Japan'
			when '4' then 'Korea'
			when '5' then 'Spanish & Portuguese languages, World'
			when '6' then 'Thailand & Vietnam / Indonesia'
			when '7' then 'Turkey'
			when '8' then 'All Other Territories'
			when '9' then 'Northeast and Mid-Atlantic'
			when '10' then 'Midwest'
			when '11' then 'Southeast'
			when '12' then 'West'
			when '13' then 'Asia and the Pacific, including Australia and New Zealand'
			when '14' then 'Europe, the Middle East, and Africa'
			when '15' then 'All other areas and general sales inquiries'
		end
	end
end