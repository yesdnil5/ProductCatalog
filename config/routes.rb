Rails.application.routes.draw do
  root 'products#index'

  resources :products do
  	resources :rates
  end
end
