Rails.application.routes.draw do
  devise_for :users
  
  resources :postus do
    resources :commentus, only: [:create, :destroy]
  end
  
  resources :postfs do
    resources :commentfs, only: [:create, :destroy]
  end

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
 
  
  resources :lectures do
    resources :stars
  end
  
  resources :lectures do
    resources :posts do
      member do
        post 'like'
        post 'dislike'
      end
      end
  end
  
  root 'home#index'
  get 'home/major'
  get 'home/professor'
  get 'home/show_major/:id' => 'home#show_major'
  get 'home/show_professor/:id' => 'home#show_professor'
  
  #get 'home/index'

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
