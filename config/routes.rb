Rails.application.routes.draw do
  devise_for :users
  resources :top
  resources :plans do
    member do
      get :myplan
    end
  end
  resources :spots
  root "top#index"
end
