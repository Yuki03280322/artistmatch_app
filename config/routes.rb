Rails.application.routes.draw do
  devise_for :artists
  root to: "homes#index"
  resources :artists, only: [:index, :edit]
end
