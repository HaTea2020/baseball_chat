Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root "rooms#index"
  resources :rooms, only: [:index,:create, :destroy] do
    resources :messages, only: [:index, :create]
  end
  resources :users, only: [:show] do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
end
