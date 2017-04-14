module SubjectHelper
	def subject_book_count(subject_id)
		@subject_size = @books.where('subjects LIKE ?', "%"+subject_id+"%").size
	end
end
