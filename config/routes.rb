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
  get   'book/:id/edit' => :edit
  post  'book/:id'      => :update
  get   'books/new'     => :new
  post  'books'         => :create

end

controller :page do

  # pages with id's are stored in the database, not in views folder

	get		'page/index'	          => :index
  get   'press-info'            => :press_info,         :id => 1
  get   'rights'                => :rights,             :id => 2
  get   'submissions'           => :submissions,        :id => 3
  get   'review-copy'           => :review_copy,        :id => 4
  get   'payment'               => :payment,            :id => 5
  get   'copy-policy'           => :copypolicy,         :id => 6
  get   'copyright'             => :copyright,          :id => 7
  get   'university-presses'    => :university_presses, :id => 8
  get   'order'                 => :order,              :id => 9
	get		'contact'			          => :contact
  get   'book-reviews'          => :reviews
  get   'conferences'           => :conferences
  get   'people'                => :people
  get   'foreign-rights'        => :foreign_rights
  get   'faq'                   => :faq
  get   'downloads'             => :downloads
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

controller :people do 
  get 'people/list'        => :list
end

controller :events do
  get 'calendar'           => :calendar
  get 'calendar/:id'       => :calendar
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
resources :documents
resources :people
resources :events
resources :journals

end
