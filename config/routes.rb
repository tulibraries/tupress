Rails.application.routes.draw do

controller :book do 
	get   'books'					=> :index
  get   'book/:id' 			=> :show
  get   'subjects/:id' 	=> :bysubject
  get   'series/:id' 		=> :byseries
  get   'studyguides' 	=> :studyguides
  get   'awards'				=> :awards
  get   'catalogs'      => :catalogs
  get   'catalogs/:id'  => :catalogs_by_season
  post  'book/:id'      => :update
end

controller :page do
	get		'page/index'	          => :index
	get		'contact'			          => :contact
  get   'order'                 => :order, :id => 3
  get   'payment'               => :payment
  get   'copy-policy'           => :copypolicy
  get   'sales-reps'            => :sales_reps
  get   'book-reviews'          => :reviews
  get   'conferences'           => :conferences
  get   'review-copy'           => :review_copy
  get   'press-info'            => :press_info, :id => 2
  get   'people'                => :people
  get   'rights'                => :rights, :id => 4
  get   'foreign-rights'        => :foreign_rights
  get   'submissions'           => :submissions, :id => 5
  get   'university-presses'    => :university_presses, :id => 1
  get   'faq'                   => :faq
  get   'copyright'             => :copyright
  get   'page/new'              => :new, :action => 'new'
  post  'pages'                 => :create
  post  'pages/:id'             => :update
  get   'page/:id/edit'         => :edit, :action => 'edit'
  root 	'page#index'
end 

controller :subject do 
	get 'subjects'			=> :index
end

controller :series do 
	get 'series'			  => :index
end

controller :agencies do 
  get   'agencies/:id'        => :index    
end


resources :links
resources :feeds
resources :book
resources :page
resources :faqs
resources :agencies


end
