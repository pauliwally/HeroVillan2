HeroesVillans::Application.routes.draw do

# HOME/INDEX
  get "/" => "heroesnvillans#index"
  get 'heroesnvillans/' => 'heroesnvillans#index'

# READ/VOTE
  get "/brands/show" => "heroesnvillans#show"
  # THIS IS HOW WEEK 7 GETS TO PRODUCT PAGE (I GOT "NO ROUTES MATCHES" ERROR MESSAGE):
  get "/brands/:brand_id/show" => "heroesnvillans#show"

# CREATE
  get "/reviews/create" => "heroesnvillans#create"

# USER LOGIN/LOGOFF
    get "/login" => "sessions#new"
    get "/authenticate" => "sessions#create"
    get "/logout" => "sessions#destroy"

    root 'brands#index'

    get "/users/new" => 'users#new'
    get "/users/create" => 'users#create'
    get "/users/:user_id/show" => 'users#show'


    get "/login" => 'sessions#new'
    get "/authenticate" => 'sessions#create'


# SEARCH
  # get "/search" => "heroesnvillans#search"
  # get "/heroesnvillans/searchresults" => "heroesnvillans#searchresults"

end

# STUFF TO DO:


    # Product-related URLs


    # # UPDATE
    # get "/products/:product_id/edit" => "products#edit"
    # get "/products/:product_id/update" => "products#update"

    # # # DELETE
    # # get "/products/:product_id/delete" => "products#destroy"


    # # Review-related URLs

    # get "/reviews/create" => 'reviews#create'

# TEXT FROM BLANK ROUTES DOCUMENT:
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

