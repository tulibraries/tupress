Rails.application.routes.draw do

  
controller :book do 
	get   'books'                 => :index
  get   'byauthor'              => :byauthor
  get   'book/:id'              => :show
  get   'subjects/:id'          => :bysubject
  get   'series/:id'            => :byseries
  get   'studyguides'           => :studyguides
  get   'studyguide/:id'        => :studyguide
  get   'awards'				        => :awards
  get   'awards/subject/:id'    => :awards_by_subject
  get   'awards/year/:id'       => :awards_by_year
  get   'catalogs'              => :catalogs
  get   'catalogs/:code'        => :catalogs_by_season
  get   'book/:id/edit'         => :edit
  post  'book/:id'              => :update
  get   'books/new'             => :new
  post  'books'                 => :create
  get   'search'                => :search
  get   'course-adoptions'      => :course_adoptions
end

controller :page do

  # pages with id's are stored in the database, not in views folder (Tiny - IMCE generated)

	get		'page/index'	               => :index
  get   'press-info'                 => :press_info,               :id => 1
  get   'rights'                     => :rights,                   :id => 2
  get   'submissions'                => :submissions,              :id => 3
  get   'review-copy'                => :review_copy,              :id => 4
  get   'payment'                    => :payment,                  :id => 5
  get   'copy-request'               => :copy_request,             :id => 6
  get   'received-copy-request'      => :received_copy_request,    :id => 12
  get   'copyright'                  => :copyright,                :id => 7
  get   'university-presses'         => :university_presses,       :id => 8
  get   'order'                      => :order,                    :id => 9
  get   'received-rights'            => :received_rights ,         :id => 10
  get   'received-review-copy'       => :received_review_copy,     :id => 11
  get   'contact'                    => :contact,                  :id => 13
  get   'book-reviews'               => :reviews
  get   'conferences'                => :conferences
  get   'people'                     => :people
  get   'foreign-rights'             => :foreign_rights
  get   'faq'                        => :faq
  get   'downloads'                  => :downloads
  get   'page/new'                   => :new
  post  'pages'                      => :create
  post  'pages/:id'                  => :update
  get   'page/:id/edit'              => :edit
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

controller :oabooks do
  get 'open-access'                       => :index
  get 'open-access/labor-studies'         => :labor_studies
  get 'open-access/north-broad-press'     => :north_broad_press
  get 'open-access/labor-studies/:id'     => :show
  get 'open-access/north-broad-press/:id' => :show
  get 'open-access/epub/:id/:epub'        => :epub
end


resources :newsitems
resources :oabooks
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
resources :reviews
resources :harvests
resources :review_harvests

end
