Rails.application.routes.draw do
  devise_for :packers
  devise_for :travelers
  root to: 'pages#home'

  resource :profile, only: [:show, :edit, :update] do
    get '/closet', to: 'profiles#closet'
  end

  resources :items, only: [:new, :create, :destroy]
  resources :packs, only: [:index, :show, :new, :create, :update, :destroy]
  resources :bookings, only: [:show, :new, :create, :update, :destroy]
  resources :cart_items, only: [:create, :destroy]
  resource :cart, only: [:show]
  delete '/carts/:id', to: 'carts#clear'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
