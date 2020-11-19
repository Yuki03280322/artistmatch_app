Rails.application.routes.draw do
  devise_for :artists
  root to: "home#index"
end
