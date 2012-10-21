Fitafy::Application.routes.draw do


#---------- RESOURCES ----------#

  resources :exercises
  resources :user_sessions
  resources :workouts, only: :index
  resources :workout_exercises
  resources :equipment

  resources :favorite_workouts, only: [:create, :destroy]

  resources :copy_workouts, only: :create

  resources :users do
    resources :workouts, only: [:new, :create, :show, :update, :update, :destroy]
  end

  resources :workouts, only: :new # to allow any user to have a create workout CTA

#---------- PRETTY URLS ----------#

  match 'login_signup', to: 'login_signups#show'
  match 'login',   to: 'user_sessions#new'
  match 'sign_up', to: 'users#new'
  match 'logout',  to: 'user_sessions#destroy'


#---------- AUTH ----------#

  match 'auth/:provider/callback', to: 'facebook_users#create'
  match 'auth/failure', to: redirect('/')

#---------- STATIC ----------#

  get 'pages/home'

#---------- HOME ----------#

  root to: "pages#home"

#---------- USERS ----------#

  # ordering is big issue, this needs to be low. So the routes tries explicit first
  # resources :users, path: "" do
  #   resources :workouts
  # end

end