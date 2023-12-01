Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/ads/new', to: 'ads#new'
  post '/ads/create', to: 'ads#create'
  get '/ads/:id/edit', to: 'ads#edit'
  put '/ads/:id/update', to: 'ads#update'
  delete'/ads/:id/delete', to: 'ads#destroy', as: 'delete'
  get '/ads/:id', to: 'ads#show'
  get '/ads/', to: 'ads#index'

end
