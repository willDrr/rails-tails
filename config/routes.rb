Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get '/user/sign_up', to: 'devise/registrations#new'
  end

  root 'home#index'
end
