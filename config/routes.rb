ApotomoingSequencers::Application.routes.draw do

  match 'sequences/text_sequenced' => "sequences#_text_sequenced"

  match 'sequences/creation_sequenced' => "sequences#_creation_sequenced"

  match 'sequences/complete_sequenced' => "sequences#_complete_sequenced"

  match 'sequences/lexigram_sequenced' => "sequences#_lexigram_sequenced"

  match 'sequences/singular_sequenced' => "sequences#_singular_sequenced"
  
  match 'sequence_createds/lexigram_sequenced' => "sequence_createds#_lexigram_sequenced"

  resources :sequences

  resources :sequencetexts

  resources :quotes

  resources :anagrams

  resources :sequence_createds

  get "sequencer/display"

  root :to => "dashboard#index"
    
  # get "application/us-states.xml"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  # To increase security on routes containing the parameter :action, 
  #  you can avoid the vulnerability by providing additional constraints.
  #   For instance replacing:
  #
  #  match '/:controller(/:action(/:id))' 
  #           with 
  #  match '/:controller(/:action(/:id))', :action => /[a-z_]+/ 
  # Ref: http://groups.google.com/group/rubyonrails-security/browse_thread/thread/3420ac71aed312d6?pli=1
end
