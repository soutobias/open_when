Rails.application.routes.draw do
  devise_for :users
  root to: 'phrases#index'
  resources :phrases do
    member do
      delete :delete_image_attachment
      patch :add_image_attachment
    end
  end
end
