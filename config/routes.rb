Fitafy::Application.routes.draw do

  resources :exercises
  get 'pages/home'
  root to: "pages#home"
end
