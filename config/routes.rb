Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/users', to: 'users#index'
  get  '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  post '/usersources', to: 'user_sources#create'
  get '/usersources', to: 'user_sources#index'
  get  '/usersources/:id', to: 'user_sources#show'
  delete  '/usersources/:id', to: 'user_sources#destroy'
  post '/countries', to: 'countries#create'
  get '/countries', to: 'countries#index'
  post '/countryusers', to: 'country_users#create'
  get '/countryusers', to: 'country_users#index'
  delete  '/countryusers/:id', to: 'country_users#destroy'
  post '/customqueries', to: 'custom_queries#create'
  get '/customqueries', to: 'custom_queries#index'
  post '/customqueryusers', to: 'custom_query_users#create'
  get '/customqueryusers', to: 'custom_query_users#index'
  delete  '/customqueryusers/:id', to: 'custom_query_users#destroy'

  resources :sources, only: [:index, :show, :create, :destroy]
  # resources :user_sources
  
end
