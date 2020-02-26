Rails.application.routes.draw do
  devise_for :users
  root 'buildings#index'

  get 'favorites', to: 'favorites#index'
end
