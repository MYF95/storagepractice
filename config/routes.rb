Rails.application.routes.draw do

  get 'statements/index'
  post 'statements/import'
  delete 'statements/destroy'
  post 'statements/upload'
  root to: 'static_pages#home'
  get 'posts/:id/download', to: 'posts#download', as: :download_image

  resources :posts
end
