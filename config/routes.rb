Rails.application.routes.draw do
  get 'orders/index'
  resources :billings, only: [:index] do
     collection do        
      get 'pre_pay'
      get 'execute'
    end
  end
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
