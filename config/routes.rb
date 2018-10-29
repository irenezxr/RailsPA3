Rails.application.routes.draw do

  resources :subjects
  resources :courses
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/user/courses', to: 'users#enrollments'
  post '/enroll/:code', to: 'users#enroll'
  get '/search', to: 'static_pages#search'
  get '/searchresults', to: 'static_pages#results'
  
  root 'sessions#new'
  get  '/signup',  to: 'users#new'
  
  resources :users
end
