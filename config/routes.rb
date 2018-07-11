Rails.application.routes.draw do
  resources :vehicules
  resources :souscripteurs
  resources :clients
  resources :att_stocks, only: [:index]
  resources :scan_att_stocks
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


# get '/stock/bord/new', to: 'scan_att_stocks#create'
# get '/stock/bord/modify', to: 'scan_att_stocks#update'
# get '/stock/bord/all', to: 'scan_att_stocks#index'
# get '/stock/att/all', to: 'att_atocks#index'
end
