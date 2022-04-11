# frozen_string_literal: true

Rails.application.routes.draw do
  resources :hotels
  resources :bookings
  resources :rooms
  resources :room_types

  devise_for :users, controllers: {
    confirmations: 'confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get '/user/sign_up', to: 'devise/registrations#new'
  end

  resources :dashboard, only: [:index]

  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'

  #root to: 'hotels#index', as: '/'
  root to: 'home#index', as: '/'
end
