Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pulls do
    resources :bookings, only: %i[create]
  end

  resources :bookings, only: %i[index]

  namespace :my do
    resources :bookings, only: %i[index]
    resources :pulls, only: %i[index]
  end
end
