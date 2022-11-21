Rails.application.routes.draw do
  devise_for :users
  root to: "pulls#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pulls, except: [:index] do
    resources :bookings, only: %i[index create]
  end

  namespace :my do
    resources :bookings, only: %i[index]
    resources :pulls, only: %i[index]
  end
end
