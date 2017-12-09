Rails.application.routes.draw do
	root to: 'puu_orders#index'
  resources :puu_orders
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
