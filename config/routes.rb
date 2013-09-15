Wherecode::Application.routes.draw do
  get 'codes/index'
  
  resources :codes
  
  root to: 'codes#index'
  
  get '/codes/:code', to: 'codes#show'
  get 'find', to: 'codes#show'
  get ':code', to: 'codes#show'

  # if :find, this works with typing in the URL
  # if :id, this works with the search box on the first page
  # how do I merge these?
  # http://railscasts.com/episodes/63-model-name-in-url
  # http://robots.thoughtbot.com/post/159809070/rails-patch-change-the-name-of-the-id-parameter-in
  # http://stackoverflow.com/questions/2837102/changing-the-id-parameter-in-rails-routing
  # http://stackoverflow.com/questions/5624024/change-from-id-in-url-in-rails-3-routing
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
