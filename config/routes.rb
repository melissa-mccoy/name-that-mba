Rails.application.routes.draw do
  root 'games#dashboard'
  resources :students, only: [:index]
  get "/studentsa", to: "students#index_a"
  get "/studentsb", to: "students#index_b"
  get "/studentsc", to: "students#index_c"
  get "/studentsd", to: "students#index_d"

  resources :games
  get "/games-a/new", to: "games#new_a", as: "new_a_game"
  get "/games-b/new", to: "games#new_b", as: "new_b_game"
  get "/games-c/new", to: "games#new_c", as: "new_c_game"
  get "/games-d/new", to: "games#new_d", as: "new_d_game"

  get "/dashboard", to: "games#dashboard", as: "dashboard"
end
