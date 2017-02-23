Rails.application.routes.draw do
  root 'items#index'

  get '/search' => 'searchcontroller#index'
  
  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
end
