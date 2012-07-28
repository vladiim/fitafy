Fitafy::Application.routes.draw do

  resources :workouts
  resources :exercises
  resources :users

  match 'sign_up', to: 'users#new'

  get 'pages/home'
  root to: "pages#home"

  # mount JasmineRails::Engine => "/specs" unless Rails.env.production?
end
