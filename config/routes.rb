Rails.application.routes.draw do

  root 'trips#index'

  resources :drivers

  resources :passengers do
    resources :trips, only: [:create]
  end

  resources :trips
  #don't need new for trips!!


end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
