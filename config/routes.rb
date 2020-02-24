Rails.application.routes.draw do
  devise_for :users
  root "buildings#index"
end
