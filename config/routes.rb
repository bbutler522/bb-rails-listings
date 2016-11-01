Rails.application.routes.draw do
  resources :categories, only: [:show]
  resources :listings, except: [:index]

  root 'listings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
