Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  resources :microposts,          only: [:create, :destroy]
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :relationships,       only: [:create, :destroy]
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root  'noko_books#home'
  get  '/help',    to: 'noko_books#help'
  get  '/about',   to: 'noko_books#about'
  get  '/contact', to: 'noko_books#contact'
  resources :users do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
