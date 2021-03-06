Rails.application.routes.draw do


  resources :comments

  get '/users/signup', to: 'users#signup'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :scores
  resources :roll_dices


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
