Rails.application.routes.draw do

  root :to => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout

  resources :users do
    resources :posts
  end

  get 'posts/all', :to => 'posts#all'  
  get 'posts/north_america', :to => 'posts#north_america'
  get 'posts/south_america', :to => 'posts#south_america'
  get 'posts/europe', :to => 'posts#europe'
  get 'posts/asia', :to => 'posts#asia'
  get 'posts/australia', :to => 'posts#australia'
  get 'posts/africa', :to => 'posts#africa'
  get 'posts/antarctica', :to => 'posts#antarctica'

  # delete '/sessions' => 'sessions#destroy'

end
 
