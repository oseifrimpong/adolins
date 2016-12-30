Rails.application.routes.draw do
  # get 'payment/index'
  # get 'payment/create'
  # get 'payment/new'
  # get 'payment/edit'
  # get 'payment/show'
  # get 'payment/update'
  # get 'payment/delete'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :payment, only: [:new, :create, :show]
  
  root to: 'posts#index'
  resources :posts do
  	resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
