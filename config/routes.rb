Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/users', to: 'users#index'
  get  '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  post '/sources', to: 'sources#create'
  get '/sources', to: 'sources#index'
  post '/usersources', to: 'user_sources#create'
  get '/usersources', to: 'user_sources#index'
end
