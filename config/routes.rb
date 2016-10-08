Rails.application.routes.draw do
  get 'home/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :items
  
  #root 'items#index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
