Rails.application.routes.draw do
  resources :neighbors
  resources :households

  root to: 'users#index'


end
