Rails.application.routes.draw do

  root 'quotes#index'

  resources :quotes

  get 'quotes/index', to: 'quotes#index'
  get 'quotes', to: 'quotes#index'
  post 'quotes', to: 'quotes#create'
  get 'quotes/new', to: 'quotes#new'
  get 'quotes/:id/edit', to: 'quotes#edit'
  get 'quotes/:id', to: 'quotes#show'
  patch 'quotes/:id', to: 'quotes#update'
  put 'quotes/:id', to: 'quotes#update'
  delete 'quotes/:id', to: 'quotes#destroy'

end
