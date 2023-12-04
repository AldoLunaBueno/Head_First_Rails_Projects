Rails.application.routes.draw do
  resources :seats
  resources :flights
  get 'flights/:flight_id/seats',  to: 'seats#flight_seats'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
