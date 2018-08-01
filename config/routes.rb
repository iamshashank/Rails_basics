Rails.application.routes.draw do


  resources :users
  root to: 'users#index'
  get 'login', to: 'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  resources :account_activations, only:[:edit]
  resources :password_resets, only:[:edit,:new,:create,:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
