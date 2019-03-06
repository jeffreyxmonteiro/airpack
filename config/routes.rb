Rails.application.routes.draw do
  devise_for :packers
  devise_for :travelers
  root to: 'pages#home'
  resources :packs, only: [:index, :show]
  resources :bookings, only: [:new, :create]
  resources :cart_items, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
