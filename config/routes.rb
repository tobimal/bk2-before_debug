Rails.application.routes.draw do
   get "/top"=> "home#top"
  root 'home#top'
  get 'home/about' => 'home#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books


end