Rails.application.routes.draw do
  #get 'hello_world/home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :reviews
  resources :companies
  resources :programs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hello_world#landing'
  get '/landing', to: 'hello_world#landing'

  get '/quiz', to: 'quiz#question1'
  post '/quiz', to: 'quiz#create'
  get '/signup', to: 'user_confids#new'
  get '/add-review', to: 'reviews#new'
  post '/add-review', to: 'reviews#create'
  get '/hello-world', to: 'hello_world#home'
  get    '/add-program',   to: 'programs#new'
  post '/add-program', to: 'programs#create'
  get    '/add-company',   to: 'companies#new'
  post '/add-company', to: 'companies#create'
  resources :user_confids
end
