Fitafy::Application.routes.draw do


#---------- RESOURCES ----------#

  resources :exercises
  resources :user_sessions
  resources :workouts, only: :index
  resources :workout_exercises

  resources :users do
    resources :workouts
  end

  resources :copy_workouts, only: :create


#---------- REDIRECTS ----------#

  match 'copy-workouts-redirect',     to: "copy_workouts#new_user"
  match 'favorite_workouts_redirect', to: "favorite_workouts#new_user"


#---------- PRETTY URLS ----------#

  match 'sign_up', to: 'users#new'
  match 'login',   to: 'user_sessions#new'
  match 'logout',  to: 'user_sessions#destroy'


#---------- STATIC ----------#

  get 'pages/home'


#---------- HOME ----------#

  root to: "pages#home"

end