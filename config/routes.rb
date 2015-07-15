Rails.application.routes.draw do
  resources :households

  root to: 'users#index'


end
