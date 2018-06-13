Rails.application.routes.draw do
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users

  resources :donators, :only => 'index'  
  resources :charities, :only => 'index'
  resources :admins, :only => 'index'
  resources :admins, :charities, :donators, :path => 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
