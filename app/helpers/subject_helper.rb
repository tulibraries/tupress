module SubjectHelper
	def book_count(subject_id)
		@subject_size = @books.where('subjects LIKE ?', "%"+subject_id+"%").size
	end
end
