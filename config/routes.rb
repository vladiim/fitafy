Fitafy::Application.routes.draw do


#---------- RESOURCES ----------#

  resources :exercises
  resources :user_sessions
  resources :workouts, only: :index
  resources :workout_exercises
  resources :equipment

  resources :favorite_workouts, only: [:create, :destroy]

  resources :copy_workouts, only: :create

  # this solution comes from http://stackoverflow.com/questions/6369476/how-to-remove-controller-names-from-rails-routes
  # resources :users, except: [:show, :new, :index, :create], path: "/" do
  #   resources :workouts, except: [:show]
  # end

  # resources :users, only: [:index, :create]

  resources :users do
    resources :workouts, only: [:new, :create, :show, :update, :destroy]
  end

  resources :workouts, only: :new # to allow any user to have a create workout CTA

  # mount Resque::Server.new, :at => "/resque"

#---------- PRETTY URLS ----------#

  # username/workout_id
  # match ":username/:workout_id", as:        :user_workout,
  #                               via:        :get,
  #                               controller: :workouts,
  #                               action:     :show

  # # username
  # match ":username", as:         :user,
  #                   via:        :get,
  #                   controller: :users,
  #                   action:     :show

  match 'login',   to: 'user_sessions#new'
  match 'sign_up', to: 'users#new'
  match 'logout',  to: 'user_sessions#destroy'


#---------- AUTH ----------#

  match 'auth/:provider/callback', to: 'facebook_users#create'
  match 'auth/failure', to: redirect('/')

#---------- STATIC ----------#

  get "pages/home"
  get "pages/terms_of_service"
  get "pages/privacy"
  match "terms_of_service", to: "pages#terms_of_service"
  match "privacy", to: "pages#privacy"

#---------- HOME ----------#

  root to: "pages#home"

#---------- USERS ----------#

  # ordering is big issue, this needs to be low. So the routes tries explicit first
  # resources :users, path: "" do
  #   resources :workouts, path: ""
  # end

end