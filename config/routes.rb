Rails.application.routes.draw do
  get 'products/index'

  get 'products/show'

  get "/contact", to: "static_pages#contact"

  root "static_pages#home"
end
