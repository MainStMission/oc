Rails.application.routes.draw do
  resources :visits
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :neighbors
  resources :households

  root to: 'users#index'


end
