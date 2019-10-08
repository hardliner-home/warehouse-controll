Rails.application.routes.draw do
  devise_for :users

  resources :warehouses do
    resources :products
  end

  resources :stores do
    resources :products
  end

  resources :orders

  get 'home' => 'home#home'

  root 'welcome#welcome'
end