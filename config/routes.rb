FleaTest::Application.routes.draw do
  resources :products

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'products#sell_index'
  get 'share_count' => 'products#sell_count'
  # 會有連結連到share

  get 'sell_01' => 'products#sell01'
  # 測試商品頁1號，需有連結連到share_count跟share

  get 'sell_02' => 'products#sell_02'
  # 測試商品頁2號，需有連結連到share_count跟share

  get 'sell_03' => 'products#sell_03'
  # 測試商品頁3號，需有連結連到share_count跟share

  get 'share' => 'products#share'

  get 'coffee-machine' => 'products#sell02'

  get 'wallet' => 'products#sell_04'

  get 'moneybag' => 'products#sell_05'

  get 'coming-soon' => 'products#coming_soon'
  # 純html頁面

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
