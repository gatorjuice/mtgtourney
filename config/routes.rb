Rails.application.routes.draw do
  devise_for :users
  root 'leagues#index'

  get '/matches' => 'matches#index'
  get '/matches/new' => 'matches#new'
  post '/matches' => 'matches#create'
  get '/matches/:id' => 'matches#show'
  get '/matches/:id/edit' => 'matches#edit'
  patch '/matches/:id' => 'matches#update'
  delete '/matches/:id' => 'matches#destroy'

  get '/tournaments' => 'tournaments#index'
  get '/tournaments/new' => 'tournaments#new'
  post '/tournaments' => 'tournaments#create'
  get '/tournaments/:id' => 'tournaments#show'
  get '/tournaments/:id/edit' => 'tournaments#edit'
  patch '/tournaments/:id' => 'tournaments#update'
  delete '/tournaments/:id' => 'tournaments#destroy'

  get '/leagues' => 'leagues#index'
  get '/leagues/new' => 'leagues#new'
  post '/leagues' => 'leagues#create'
  get '/leagues/:id' => 'leagues#show'
  get '/leagues/:id/edit' => 'leagues#edit'
  patch '/leagues/:id' => 'leagues#update'
  delete '/leagues/:id' => 'leagues#destroy'
end
