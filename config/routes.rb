Rails.application.routes.draw do




  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
 
  #resources :payment, only: [:new, :create, :show]
  
  root to: 'posts#index'
  resources :comments
  resources :posts 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
