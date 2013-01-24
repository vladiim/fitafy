Fitafy::Application.routes.draw do

#---------- RESOURCES ----------#

  resources :exercises, :equipment, :user_sessions, :workout_exercises

  resources :workouts,          only: [:index, :new] # allows anyone to see index and create new workout cta
  resources :favorite_workouts, only: [:create, :destroy]
  resources :copy_workouts,     only: [:create]
  resources :password_resets,   only: [:new, :create, :edit, :update]
  resources :activations,       only: [:new, :edit]
  resources :new_workout_exercises, only: :index
  resources :workout_exercise_set_details, only: [:show, :update]

  resources :users do
    resources :workouts,      only: [:new, :create, :update, :destroy]
    resources :view_features, only: [:index]
  end

#---------- PRETTY URLS ----------#

  namespace :users, path: "/:username" do
    resources :workouts, only: [:show, :index]
  end

  match 'login',            to: 'user_sessions#new'
  match 'sign_up',          to: 'users#new'
  delete 'logout',          to: 'user_sessions#destroy'
  post 'activations/reset', to: 'activations#reset'

  # mount Resque::Server.new, :at => "/resque"

#---------- SERVICES ----------#

  match 'auth/:provider/callback', to: 'facebook_users#create'
  match 'auth/failure',            to: redirect('/')

#---------- STATIC ----------#

  get   "pages/home"
  get   "pages/terms_of_service"
  get   "pages/privacy"
  match "terms_of_service", to: "pages#terms_of_service"
  match "privacy",          to: "pages#privacy"

#---------- HOME ----------#

  root to: "pages#home"

end