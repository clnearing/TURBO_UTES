Rails.application.routes.draw do
  devise_for :users
  root to: "utes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :utes do
    resources :bookings, only: [:new, :create, :edit, :update]
  end

  # resources :dashboard, only: [:my-utes, :my_utes_bookings, :bookings_made_by_me]

  get "/dashboard", to: "dashboard#index", as: :dashboard

  get "/dashboard/my_utes", to: "dashboard#my_utes", as: :my_utes

  get "/dashboard/my_utes_bookings", to: "dashboard#my_utes_bookings", as: :my_utes_bookings

  get "/dashboard/bookings_made_by_me", to: "dashboard#bookings_made_by_me", as: :bookings_made_by_me

  # Defines the root path route ("/")
  # root "posts#index"
end
