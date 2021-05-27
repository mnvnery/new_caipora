Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :trips, only: [:index, :show] do
    resources :sign_ups, only: [:new, :create]
    resources :bookings, only: [:index, :show, :new, :create]
  end

  resources :clients, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
  resources :pages, only: [:index, :show, :new, :create]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
