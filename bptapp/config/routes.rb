Rails.application.routes.draw do

root :to => 'sessions#index'

resources :users
resources :sessions
resources :messages
resources :maps

end
