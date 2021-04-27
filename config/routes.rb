Rails.application.routes.draw do
  resources :routers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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

  get '/coffee', to: 'map#show'
  get '/quiz', to: 'quiz#question1'
  post '/quiz', to: 'quiz#create'
  get '/signup', to: 'user_confids#new'
  post '/signup', to: 'user_confids#create'
  get '/user-page', to: 'userpage#show'
  post '/user-page', to: 'userpage#show'

  resources :user_confids
  resources :quizzes
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end

    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create]
end
