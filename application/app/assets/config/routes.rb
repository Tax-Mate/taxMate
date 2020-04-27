Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :federalforms
  resources :stateforms
  resources :resources
  
  get 'welcome/index'
  
  get 'federalforms/federal'
  get 'stateforms/stateform'
  resources :articles
  
   resources :sessions, only:[:new, :create, :destroy]
   get 'signup', to: 'users#new', as: 'signup'
   get 'Login', to: 'sessions#new', as: 'login'
   get 'Logout', to: 'sessions#destroy', as: 'logout'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
