Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'toppages#index'
 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, only: [:index, :show, :new, :create]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
 
end
