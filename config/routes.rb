Rails.application.routes.draw do
  resources :products, only: :show
end
