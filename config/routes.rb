Rails.application.routes.draw do

  get 'sessions/new'
  get 'users/new'
  get '/home', to: 'page#home'
  get '/contact', to: 'page#contact'
  get '/help', to: 'page#help'
  get '/about', to: 'page#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/tasks', to: 'tasks#index'
  delete '/logout', to: 'sessions#destroy'
 root 'page#home'
 resources :users, :tasks
  end