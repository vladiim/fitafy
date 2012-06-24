Fitafy::Application.routes.draw do

  resources :workouts
  resources :exercises

  get 'pages/home'
  root to: "pages#home"

  # mount JasmineRails::Engine => "/specs" unless Rails.env.production?
end
