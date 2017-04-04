Rails.application.routes.draw do

controller :book do 
	get 'books'					=> :index
  get 'books/:id'			=> :index
  get 'book/:id' 			=> :show
  get 'subjects/:id' 	=> :bysubject
  get 'series/:id' 		=> :byseries
  get 'studyguides' 	=> :studyguides
  get 'awards'				=> :awards
end

controller :page do
	get		'page/index'	  => :index
	get		'contact'			  => :contact
  get   'order'         => :order
  get   'payment'       => :payment
  get   'copy-policy'   => :copypolicy
  get   'sales-reps'    => :sales_reps
  get   'book-reviews'  => :reviews
  root 	'page#index'
end 

controller :subject do 
	get 'subjects'			=> :index
end

controller :series do 
	get 'series'			=> :index
end

end
