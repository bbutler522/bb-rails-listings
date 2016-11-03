Rails.application.routes.draw do
  resources :categories, only: [:show]
  resources :listings, except: [:index]
  resources :users

  root 'listings#index'

  get '/signup'  => 'users#new' 

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
