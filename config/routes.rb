Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [ :index, :new, :create ]
  end

  namespace :admin do
    resources :restaurants, only: [:edit, :update, :destroy]
    resources :reviews, only: [:edit, :update, :destroy]
  end

end
