Rails.application.routes.draw do




  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :orders
  resources :payments
  #resources :payment, only: [:new, :create, :show]
  
  root to: 'posts#index'
  resources :posts do
  	resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
