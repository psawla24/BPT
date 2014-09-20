Rails.application.routes.draw do

  root :to => 'sessions#index'

  # resources :users
  # resources :sessions
  # resources :messages
  # resources :maps


  get '/signin', to: 'sessions#new', as: :sessions
  post '/signin', to: 'sessions#create'
  delete '/signout' => 'sessions#destroy', as: :sign_out
  get '/signup' => 'users#new'
  
  # get 'users/new' => 'users#new'
  post '/users' => 'users#create'





  get 'users/:id/edit', => 'users#edit', as: :edit_maps
  patch 'users/:id', => 'users#update'








  get 'messages/' => 'messages#index'
  post 'messages/' => 'messages#create'

  get 'messages/new' => 'messages#new', as: :new_message
  # get 'messages/:id' => 'messages#show', as: :message



  get 'maps/' => 'maps#index'
  post 'maps/' => 'maps#create'

  get 'maps/new' => 'maps#new', as: :new_map
  # get 'maps/:id' => 'maps#show', as: :map

end
 
