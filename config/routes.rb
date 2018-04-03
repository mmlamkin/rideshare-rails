Rails.application.routes.draw do

  root 'trips#index'

  resources :drivers

  resources :passengers

  resources :trips
  #don't need index for trips!!


end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
