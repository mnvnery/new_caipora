Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users
  root to: 'pages#home'
  get 'test', to: 'pages#test'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'presentation', to: 'pages#presentation'
  get 'privacy', to: 'pages#privacy'
  get 'terms', to: 'pages#terms'
  resources :pages
  resources :trips do
    resources :sign_ups, only: [:new, :create]
    resources :trip_edits
    resources :faqs
    resources :programs
  end

  resources :bookings, only: [:index, :show, :create] do
    resources :payments, only: :new
  end

  resources :clients, only: [:index, :show, :new, :create] 
  resources :pages, only: [:index, :show, :new, :create]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
