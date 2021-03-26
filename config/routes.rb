Rails.application.routes.draw do
  get 'hello_world/home'
  resources :reviews
  resources :companies
  resources :programs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hello_world#home'
  get "/add-review", to: "reviews#new"
end
