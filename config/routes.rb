Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'blogs#index'

  get 'practice/index'
  post 'practice/index'

  resources :blogs
end
