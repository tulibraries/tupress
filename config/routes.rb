Rails.application.routes.draw do


  resources :faqs
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
  get   'payment'               => :payment, :id => 5
  get   'copy-policy'           => :copypolicy, :id => 6
  get   'book-reviews'          => :reviews
  get   'conferences'           => :conferences
  get   'review-copy'           => :review_copy, :id => 4
  get   'press-info'            => :press_info, :id => 1
  get   'people'                => :people
  get   'rights'                => :rights, :id => 2
  get   'foreign-rights'        => :foreign_rights
  get   'submissions'           => :submissions, :id => 3
  get   'university-presses'    => :university_presses, :id => 8
  get   'faq'                   => :faq
  get   'copyright'             => :copyright, :id => 7
  get   'page/new'              => :new
  post  'pages'                 => :create
  post  'pages/:id'             => :update
  get   'page/:id/edit'         => :edit
  root 	'page#index'
end 

controller :subject do 
	get 'subjects'			    => :index
end

controller :series do 
	get 'series'			      => :index
end

controller :agencies do 
  get 'agencies/:id'      => :index    
end

controller :reps do 
  get 'sales-reps'        => :sales_reps
end


resources :links
resources :feeds
resources :book
resources :page
resources :faqs
resources :agencies
resources :conferences
resources :reps
resources :regions



end
