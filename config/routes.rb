Fitafy::Application.routes.draw do

  resources :workouts
  resources :exercises
  get 'pages/home'
  root to: "pages#home"
end
