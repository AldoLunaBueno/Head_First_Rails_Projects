Rails.application.routes.draw do
  get '/client_workouts/find', to: 'client_workouts#find', as: 'find'
  resources :client_workouts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
