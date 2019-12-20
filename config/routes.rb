Rails.application.routes.draw do

  resources :appearances, only: [:new, :create,:index]

  resources :guests, only: [:index,:show]

  resources :episodes, only: [:index,:show]
end
