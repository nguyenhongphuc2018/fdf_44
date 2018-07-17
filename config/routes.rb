Rails.application.routes.draw do
  get "/contact", to: "static_pages#contact"
  resources :products, only: [:index, :show]

  root "static_pages#home"
end
