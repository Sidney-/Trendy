Glass::Application.routes.draw do



 # if Rails.env.production?
  #  devise_for :users, :controllers => { :registrations => "registrations" }
  #else

#  match 'users/sign_up' => redirect('/404.html'), via: :get
 #match 'users' =>      redirect('/404.html'), via: :post

  devise_for :users
  #end
  root 'pages#index'

  match  "/location", to:"pages#location",via: :get
  match  "/terms", to:"pages#terms",via: :get
  match  "/returns", to:"pages#returns",via: :get
  match  "/about", to:"pages#about",via: :get
  match  "/index", to:"pages#index",via: :get
  match  "/contact", to:"pages#contact",via: :get
  match  "/brands", to:"pages#brands", via: :get
  match  "/newsletter", to:"pages#newsletter", via: [:get,:post]
  match "/newsletterSave", to:"pages#newsletterSave", via:[:post]
  match "/admin/NewsReport" ,to:"admin#newsletterReport", via: :get , as: 'NewsReport'
  match "/admin", to:"admin#index", via: :get
  match "/admin/Eaboutme", to:"admin#Eaboutme", via: [:get,:post], as:'mcms'
  match "/admin/EaboutmeSave", to:"admin#EaboutmeSave", via: :post
  match "/admin/Cbimage", to:"admin#Cbimage", via: [:get,:post]
  match "/admin/CbimageSave", to:"admin#CbimageSave", via: [:get,:post,:patch]

  #resources :newsletter
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
