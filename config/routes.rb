Rails.application.routes.draw do
  get 'welcome/index'

  resources :products do
  	resources :rates
  end

  root 'welcome#index'
end
