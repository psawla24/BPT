Rails.application.routes.draw do

  root :to => 'sessions#index'

  resources :users 

  resources :sessions

  delete '/sessions' => 'sessions#destroy'

  resources :messages
  resources :posts
  resources :maps

  get 'testout' => 'posts#new1'

end
 
