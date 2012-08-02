Fitafy::Application.routes.draw do

  resources :exercises
  resources :user_sessions
  resources :workouts, only: :index

  resources :users do
    resources :workouts
  end

  # match 'copy_workout', to: "workouts#copy", method: "post"
  resources :copy_workouts, only: :create
  match 'sign_up', to: 'users#new'
  match 'login',   to: 'user_sessions#new'
  match 'logout',  to: 'user_sessions#destroy'

  get 'pages/home'
  root to: "pages#home"

  # mount JasmineRails::Engine => "/specs" unless Rails.env.production?
end
