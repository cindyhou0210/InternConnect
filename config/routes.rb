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
<<<<<<< HEAD
  root 'items#home'
  get '/signup', to: 'user_confids#new'
  resources :user_confids
=======
  root 'hello_world#home'
  get "/add-review", to: "reviews#new"
>>>>>>> update-reviews
end
