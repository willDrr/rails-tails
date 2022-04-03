Rails.application.routes.draw do
  resources :rooms
  resources :room_types
  get 'home/index'
  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get '/user/sign_up', to: 'devise/registrations#new'
  end

  resources :home, only: [:index]

  resources :dashboard, only: [:index]

  root to: 'home#index'
end
