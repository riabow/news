Rails.application.routes.draw do
  resources :companies do 
    collection { post :import}
    collection { post :deleteall}
  end  

  get "hashtags/:hashtag",   to: "hashtags#show",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags
  resources :prices
  resources :tovs
  resources :sp2s
  resources :supls
  get 'home/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :items
  
  #root 'items#index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
