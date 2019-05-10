Rails.application.routes.draw do
  get 'quotes/index'

  resources :quotes

  root 'quotes#index'
end
