Rails.application.routes.draw do

  devise_for :users
  root "top#index"

  resources :trainings, only: [:index, :new, :create, :show]
  resources :troubles, only: [:index, :new, :create]
end
