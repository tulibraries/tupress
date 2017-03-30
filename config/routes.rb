Rails.application.routes.draw do
  get 'book/index'

  get 'book/show'

  get 'page/index'

  get 'categories/index'
  
  get 'categories/show'

  root 'page#index'
end
