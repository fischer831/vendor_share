Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Routes for the Vendor resource:
  # CREATE
  get "/vendors/new", :controller => "vendors", :action => "new"
  post "/create_vendor", :controller => "vendors", :action => "create"

  # READ
  get "/vendors", :controller => "vendors", :action => "index"
  get "/vendors/:id", :controller => "vendors", :action => "show"

  # UPDATE
  get "/vendors/:id/edit", :controller => "vendors", :action => "edit"
  post "/update_vendor/:id", :controller => "vendors", :action => "update"

  # DELETE
  get "/delete_vendor/:id", :controller => "vendors", :action => "destroy"
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # Routes for the Vendor_size resource:
  # CREATE
  get "/vendor_sizes/new", :controller => "vendor_sizes", :action => "new"
  post "/create_vendor_size", :controller => "vendor_sizes", :action => "create"

  # READ
  get "/vendor_sizes", :controller => "vendor_sizes", :action => "index"
  get "/vendor_sizes/:id", :controller => "vendor_sizes", :action => "show"

  # UPDATE
  get "/vendor_sizes/:id/edit", :controller => "vendor_sizes", :action => "edit"
  post "/update_vendor_size/:id", :controller => "vendor_sizes", :action => "update"

  # DELETE
  get "/delete_vendor_size/:id", :controller => "vendor_sizes", :action => "destroy"
  #------------------------------

  # Routes for the Capability resource:
  # CREATE
  get "/capabilities/new", :controller => "capabilities", :action => "new"
  post "/create_capability", :controller => "capabilities", :action => "create"

  # READ
  get "/capabilities", :controller => "capabilities", :action => "index"
  get "/capabilities/:id", :controller => "capabilities", :action => "show"

  # UPDATE
  get "/capabilities/:id/edit", :controller => "capabilities", :action => "edit"
  post "/update_capability/:id", :controller => "capabilities", :action => "update"

  # DELETE
  get "/delete_capability/:id", :controller => "capabilities", :action => "destroy"
  #------------------------------

  # Routes for the Service resource:
  # CREATE
  get "/services/new", :controller => "services", :action => "new"
  post "/create_service", :controller => "services", :action => "create"

  # READ
  get "/services", :controller => "services", :action => "index"
  get "/services/:id", :controller => "services", :action => "show"

  # UPDATE
  get "/services/:id/edit", :controller => "services", :action => "edit"
  post "/update_service/:id", :controller => "services", :action => "update"

  # DELETE
  get "/delete_service/:id", :controller => "services", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'vendors#index'

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
