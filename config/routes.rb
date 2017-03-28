Rails.application.routes.draw do
  get 'book/index'

  get 'page/index'

  root 'page#index'
end
