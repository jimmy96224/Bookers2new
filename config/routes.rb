Rails.application.routes.draw do
  
  devise_for :users
  
  # get 'users/show'
  # get 'users/edit'
  resources :users, only: [:index, :show, :edit]
  
  # get 'books/index'
  # get 'books/show'
  resources :books, only: [:new, :create, :index, :show]

  
  root to: "homes#top"
  
  get '/home/about', to: 'homes#about', as: 'about'
  
end
