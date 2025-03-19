Rails.application.routes.draw do
  devise_for :users
  resources :top
  resources :plans do
    member do
      get :myplan
    end
  end
  root "top#index"
end
