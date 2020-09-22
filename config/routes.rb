Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show, :index] do
    member do
      get :following, :followers
    end
  end
  resources :posts, only: [:show, :new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :likes, only: [:index, :create, :destroy]
  resources :comments, only: [:create, :destroy]
  resources :notifications, only: :index
  get '/search', to: 'posts#search'
end
