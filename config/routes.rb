Rails.application.routes.draw do
  
  devise_for :users
  
  # get 'users/show'
  # get 'users/edit'
  resources :users, only: [:show, :edit]
  
  root to: "homes#top"
  
  get '/home/about', to: 'homes#about', as: 'about'
  
end
