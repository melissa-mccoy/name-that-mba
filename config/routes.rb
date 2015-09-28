Rails.application.routes.draw do
  root 'games#dashboard'
  resources :students, only: [:index]
  resources :games
  get "/dashboard", to: "games#dashboard", as: "dashboard"
end
