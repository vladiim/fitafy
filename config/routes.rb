Fitafy::Application.routes.draw do

  resources :workouts
  resources :exercises
  resources :users
  resources :user_sessions

  match 'sign_up', to: 'users#new'
  match 'login',   to: 'user_sessions#new'
  match 'logout',  to: 'user_sessions#destroy'

  get 'pages/home'
  root to: "pages#home"

  # mount JasmineRails::Engine => "/specs" unless Rails.env.production?
end
