Rails.application.routes.draw do
  resources :workout_exercises
  resources :flow_poses
  resources :exercises
  resources :poses
  resources :yoga_flows
  resources :hiit_workouts
  resources :yogas
  resources :hiits
  resources :users, only: [:index, :show, :create]

  post "/login", to: "authentication#login"
end
