Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/statistics', to: 'static_pages#statistics'
  get '/signup', to:'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/clients', to: 'clients#index'
  get '/client/new', to: 'clients#new'
  post '/client/new', to: 'clients#create'
  post '/invoices/pdf', to: 'invoices#pdf'

  resources :hours
  resources :clients
  resources :invoices
  resources :users, except: [:new, :index]

  # charts
  namespace :charts do
    get 'total_hours'
    get 'total_invoices_amount_per_day'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
