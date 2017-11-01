Rails.application.routes.draw do
  resources :informationquotes
  resources :quotes
  resources :typeproducts
  resources :attributeproducts
  resources :attributes
  resources :products
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
