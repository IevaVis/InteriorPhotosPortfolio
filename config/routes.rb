Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
root "pages#home"

match '/contacts',     to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]

resources :albums
end
