Rails.application.routes.draw do
  devise_for :packers
  devise_for :travelers
  root to: 'pages#home'

  resource :profile, only: [:show, :edit, :update] do
    get '/closet', to: 'profiles#closet'
  end
  resources :packs, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :items, only: :update
  end
  resources :items, only: [:index, :show, :new, :create, :destroy]
  resources :bookings, only: [:show, :new, :create, :update, :destroy]
  resources :cart_items, only: [:create, :destroy]
  delete '/carts/:id', to: 'cart#clear', as: 'clear_cart'
  resources :temp_closet_items, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
