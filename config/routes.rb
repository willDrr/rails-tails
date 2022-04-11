# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :employees do
    get 'dashboard/index'
  end
  namespace :users do
    get 'dashboard/index'
  end
  resources :roles
  resources :hotels
  resources :bookings
  resources :rooms
  resources :room_types

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    confirmations: 'confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_scope :user do
    authenticated :user do
      namespace :users do
        get 'dashboard/index', as: :authenticated_root
        get '/users/sign_out', to: 'devise/sessions#destroy'
        get '/user/sign_up', to: 'devise/registrations#new'
      end
    end
  end

  devise_for :employees, path: 'employees', controllers: {
    sessions: 'employees/sessions',
    registrations: 'employees/registrations'
  }

  devise_scope :employee do
    authenticated :employee do
      namespace :employees do
        get 'dashboard/index', as: :authenticated_root
        get '/employees/sign_out', to: 'employee/sessions#destroy'
        get '/employee/sign_up', to: 'employee/registrations#new'
      end
    end
  end

  resources :dashboard, only: [:index]

  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'

  root to: 'home#index', as: '/'
end
