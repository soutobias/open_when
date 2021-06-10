Rails.application.routes.draw do
  devise_for :users
  root to: 'phrases#index'
  resources :phrases
end
