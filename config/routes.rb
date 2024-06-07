Rails.application.routes.draw do
  devise_for :users
  root to: "utes#index"

  resources :utes do
    resources :bookings, only: [:create] do
      resources :reviews, only: [:new, :create]
    end
  end

  resources :bookings, only: [:edit, :update]

  # resources :dashboard, only: [:my-utes, :my_utes_bookings, :bookings_made_by_me]

  get "/dashboard", to: "dashboard#index", as: :dashboard

  get "/dashboard/my_utes", to: "dashboard#my_utes", as: :my_utes

  get "/dashboard/my_utes_bookings", to: "dashboard#my_utes_bookings", as: :my_utes_bookings

  get "/dashboard/bookings_made_by_me", to: "dashboard#bookings_made_by_me", as: :bookings_made_by_me

  # Defines the root path route ("/")
  # root "posts#index"
end
