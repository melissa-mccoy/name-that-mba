Rails.application.routes.draw do
  root 'students#start'
  resources :students
end
