Rails.application.routes.draw do

  get 'statements/index'
  post 'statements/import'
  delete 'statements/destroy'
  root to: 'static_pages#home'

  resources :posts
end
