Rails.application.routes.draw do
  resources :dio_blogs
  get 'home/index'
  root "dio_blogs#index"
  resources :posts
  get "/articles", to: "articles#index"
end