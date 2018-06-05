module SeriesHelper
	def series_book_count(series_code)
		@series_size = @books.where('in_series LIKE ?', "%"+series_code+"%").size
	end
end
