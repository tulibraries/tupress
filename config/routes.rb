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
  get   'course-adoptions'      => :course_adoptions
end

controller :page do

  # pages with id's are stored in the database, not in views folder (Tiny - IMCE generated)

  get   'press-info'                 => :press_info,               :id => 1
  get   'submissions'                => :submissions,              :id => 3
  get   'payment'                    => :payment,                  :id => 5
  get   'copyright'                  => :copyright,                :id => 7
  get   'university-presses'         => :university_presses,       :id => 8
  get   'order'                      => :order,                    :id => 9
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
  # get   'search'                     => :search
  get   'open-access/north-broad-press/call-for-proposals' => :north_broad_press_proposals, :id => 15
  root 	'page#index'
end 

# controller :forms do 
  get 'review-copy',   to: "forms#review_copy"
  get 'copy-request',  to: "forms#copy_request"
  get 'contact',       to: "forms#contact"
  get 'rights',       to: "forms#rights"
# end

controller :subject do 
  get 'subjects'          => :index
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
  get 'event/:id'          => :show
end

controller :conferences do
  get 'conference/:id'            => :show
  get 'conferences/conferences'   => :index
end

controller :faqs do
  get 'faq/:id'     => :show
end

controller :oabooks do
  get 'open-access'                              => :index
  get 'open-access/labor-studies'                => :labor_studies
  get 'open-access/north-broad-press'            => :north_broad_press
  get 'open-access/labor-studies/:id'            => :show
  get 'open-access/north-broad-press/:id'        => :show
  get 'open-access/epub/:id/:epub'               => :epub
  get 'open-access/labor-studies/:id/epub'       => :download_epub
  get 'open-access/labor-studies/:id/pdf'        => :download_pdf
  get 'open-access/labor-studies/:id/mobi'       => :download_mobi
end

controller :redirects do
    # get 'titles/:id' => :titles
end

controller :application do
  get 'search' => :search
  get 'search2' => :search2
end

resources :agencies
resources :book
resources :brochures
resources :conferences
resources :documents
resources :events
resources :faqs
resources :feeds
resources :forms , only: [:new, :create, :show, :contact]
resources :harvests 
resources :highlights, only: :index
resources :journals
resources :links
resources :newsitems
resources :news_items, only: :index
resources :oabooks
resources :page
resources :people
resources :promotions
resources :reps
resources :regions
resources :reviews 
resources :review_harvests

end
