Rails.application.routes.draw do


  # get 'maps/new'

  root :to => 'sessions#index'


  get '/login' => 'users#new'
  ## get 'signup/' => 'users#new', as: :signup
  # get 'users/new' => 'users#new'
  post 'users/' => 'users#create'


  get '/login', to: 'sessions#new', as: :sessions
  post '/login', to: 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :log_out

  get 'messages/new', to: 'messages#new',  as: :sendmsg #,  as: :signup
  post 'messages/new', to: 'messages#new'

  post 'messages/', to: 'messages#create'

  get 'messages/all', to: 'messages#index', as: :allmsgs
  post 'messages/all', to: 'messages#index'



  get 'maps/new', to: 'maps#new', as: :mymap
  post 'maps/new', to: 'maps#create'

  post 'maps/', to: 'maps#create'

  get 'testout' => 'maps#test'

  # get 'testdalton' => "maps#dalton"

  # get 'maps/locations', to: 'maps#locations', as: :lcns
  # post 'maps/locations', to: 'maps#locations'


#   get '/messages', to: 'messages#index'
#   get '/photos/new', to: 'messages#new'
#   post '/messages'
#   get '/messages/:id', to: ''
#   get '/messages/:id/edit', to: 
#   put '/messages/:id', 
#   delete '/messages/:id', 




# GET    /photos                index display a list of all photos
# GET    /photos/new            new return an HTML form for creating a new photo
# POST   /photos                create create a new photo
# GET    /photos/:id            show display a specific photo
# GET    /photos/:id/edit       edit  return an HTML form for editing a photo
# PUT    /photos/:id update     update a specific photo
# DELETE /photos/:id destroy    delete a specific photo




  # get 'maps/test', to: 'maps#test', as: :mymap
  # post 'maps/test', to: 'maps#create'

  # post 'maps/', to: 'maps#create'
 

  


  ############## Backup routes in GA Notes 9.15.14
  ##############


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  # get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end