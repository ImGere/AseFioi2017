Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to:'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/client', to: 'clients#index'
  get '/client/new', to: 'clients#new'
  post '/client/new', to: 'clients#create'
  get '/invoices/default', to: 'invoices#default'
  post '/invoices/pdf', to: 'invoices#pdf'

  resources :hours
  resources :clients
  resources :invoices
  resources :users, except: :new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
