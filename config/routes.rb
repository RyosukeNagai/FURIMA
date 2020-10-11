Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  resources :users, only: [:show, :edit, :update]

  namespace :products do
    resources :searches, only: [:index,:show]
  end
  
  resources :categories, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
