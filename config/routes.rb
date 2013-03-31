Fitafy::Application.routes.draw do

  resources :user_records, only: [:create]
  resources :invites, only: [:index, :create]

  #---------- SIMPLE ----------#

  get "unsubscribe/:perishable_token", to: "unsubscribes#update", as: :unsubscribe

  #---------- STATIC ----------#

  get "pages/home"
  root to: "pages#home"

  get   "pages/terms_of_service"
  get   "pages/privacy"
  match "terms_of_service", to: "pages#terms_of_service"
  match "privacy",          to: "pages#privacy"
end