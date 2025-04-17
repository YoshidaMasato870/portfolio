Rails.application.routes.draw do
  devise_for :users
  resources :top
  resources :plans do
    resource :favorite, only: [:create, :destroy]
    collection do
      get :search
      get :my_favorites
    end
    member do
      get :myplan
    end
  end
  resources :spots
  root "top#index"
end
