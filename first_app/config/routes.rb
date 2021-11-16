Rails.application.routes.draw do
  
  get 'cards/show'
  resources :products
  #get 'home/index'
  #get 'home/about'

  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
  

  root 'shops#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
