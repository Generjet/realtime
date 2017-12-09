Rails.application.routes.draw do
  resources :users
	mount ActionCable.server => '/cable'
	# root to: 'puu_orders#index'
	root 'spreadsheet#index'
  get 'spreadsheet/index'
  resources :puu_orders
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
