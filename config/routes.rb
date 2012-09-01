Fitafy::Application.routes.draw do

  resources :exercises
  resources :user_sessions
  resources :workouts, only: :index
  resources :workout_exercises

  resources :users do
    resources :workouts
  end

  resources :copy_workouts, only: :create
  match 'copy-workouts-redirect', to: "copy_workouts#new_user"

  match 'sign_up', to: 'users#new'
  match 'login',   to: 'user_sessions#new'
  match 'logout',  to: 'user_sessions#destroy'

  get 'pages/home'
  root to: "pages#home"

  # mount JasmineRails::Engine => "/specs" unless Rails.env.production?
end