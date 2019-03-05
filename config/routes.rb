Rails.application.routes.draw do
  devise_for :packers
  devise_for :travelers
  devise_for :users
  root to: 'pages#home'
  resources :packages, only: [:index, :show]
  resources :bookings, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
