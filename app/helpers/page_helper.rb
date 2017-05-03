module PageHelper

	def mailers
		[
			['All Subjects', 'All'],
			['African American Studies', 'African American Studies'],
			['Aging', 'Aging'],
			['American Studies', 'American Studies'],
			['Animals and Society', 'Animals and Society'],
			['Anthropology', 'Anthropology'],
			['Art and Photography', 'Art and Photography'],
			['Asian American Studies', 'Asian American Studies'],
			['Asian Studies', 'Asian Studies'],
			['Biography', 'Biography'],
			['Business/Economics', 'Business/Economics'],
			['Children\'s Books', 'Children\'s Books'],
			['Cinema Studies', 'Cinema Studies'],
			['Community Organizing', 'Community Organizing'],
			['Cultural Studies', 'Cultural Studies'],
			['Death and Dying', 'Death and Dying'],
			['Disability Studies', 'Disability Studies'],
			['Education', 'Education'],
			['Family Policy', 'Family Policy'],
			['Gender Studies', 'Gender Studies'],
			['General Interest', 'General Interest'],
			['Geography', 'Geography'],
			['Health and Health Policy', 'Health and Health Policy'],
			['History', 'History'],
			['Immigration Studies', 'Immigration Studies'],
			['Jewish Studies', 'Jewish Studies'],
			['Labor Studies and Work', 'Labor Studies and Work'],
			['Latin/Caribbean Studies', 'Latin/Caribbean Studies'],
			['Latino/a Studies', 'Latino/a Studies'],
			['Law and Criminology', 'Law and Criminology'],
			['Literature and Drama', 'Literature and Drama'],
			['Mass Media and Communications', 'Mass Media and Communications'],
			['Music and Dance', 'Music and Dance'],
			['Nature and the Environment', 'Nature and the Environment'],
			['Philadelphia Region', 'Philadelphia Region'],
			['Philosophy and Ethics', 'Philosophy and Ethics'],
			['Political Science and Public Policy', 'Political Science and Public Policy'],
			['Psychology', 'Psychology'],
			['Race and Ethnicity', 'Race and Ethnicity'],
			['Religion', 'Religion'],
			['Science', 'Science'],
			['Sexual Identity', 'Sexual Identity'],
			['Sociology', 'Sociology'],
			['Sports', 'Sports'],
			['Technology', 'Technology'],
			['Urban Studies', 'Urban Studies'],
			['Women\'s Studies', 'Women\'s Studies'],
			['Youth Studies', 'Youth Studies']
		]
	end
	def get_month (month)
		case month
			when "01" then "January"
			when "02" then "February"
			when "03" then "March"
			when "04" then "April"
			when "05" then "May"
			when "06" then "June"
			when "07" then "July"
			when "08" then "August"
			when "09" then "September"
			when "10" then "October"
			when "11" then "November"
			when "12" then "December"
		end
	end

end
