Rails.application.routes.draw do
  get 'orders/index'
  get 'products/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
