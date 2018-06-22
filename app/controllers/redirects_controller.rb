class RedirectsController < ApplicationController

	def titles
		id = params[:id]
		book_id = id.split("_").first

		book = Book.where("cover_image LIKE ?", "%#{book_id}_%")
		redirect_to book
	end
end
