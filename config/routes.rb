Rails.application.routes.draw do
  devise_for :artists
  root to: "homes#index"
  resources :artists, only: [:index, :edit, :update, :show]
  resources :arts, only: [:new, :create, :index, :destroy]
  resources :matchings, only: :index
end
