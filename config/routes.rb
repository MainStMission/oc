Rails.application.routes.draw do
  devise_for :users
  resources :neighbors
  resources :households

  root to: 'users#index'


end
