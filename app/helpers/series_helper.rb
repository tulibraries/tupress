module SeriesHelper
	def book_count(series_id)
		@series_size = @books.where('in_series LIKE ?', "%"+series_id+"%").size
	end
end
