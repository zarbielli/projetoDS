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

  put '/approveRegister/:user_id', to: 'admins#approve_register', as: 'approve'
  put '/acceptDonate/:donate_id', to: 'charities#accept_donate', as: 'accept'
  delete '/refuseRegister/:user_id', to: 'admins#refuse_register', as: 'refuse'
  put '/cancelDonate/:donate_id', to: 'charities#cancel_donate', as: 'cancel'
  put '/notifyDonate/:donate_id', to: 'charities#notify_donate', as: 'notify'
  post 'new-donate' => 'donators#new_donate'

end
