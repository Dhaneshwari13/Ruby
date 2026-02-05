Rails.application.routes.draw do

  if Rails.env.development? #application running(env)
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  
  # resources :products, except:[:show]
  #resources :products, only: [:edit, :destroy]

  # resources :products, only: [:show] do
  #    collection do     
  #      get 'out-of-stock' 
  #        end
  #       end

 resources :products
  resources :customers
  resources :orders

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  #Assignment (27/1/26)
  # resources :products,skip:[show]  ---> this is Rails will generate all RESTful routes for products EXCEPT the show route.
  
end

