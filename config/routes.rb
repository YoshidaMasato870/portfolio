Rails.application.routes.draw do
  devise_for :users
  resources :top
  root "top#index"
end
