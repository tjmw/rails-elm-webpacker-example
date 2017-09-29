Rails.application.routes.draw do
  root to: redirect("/products/example", status: 302)

  resources :products, only: :show
end
