Rails.application.routes.draw do
  resources :att_atocks
  resources :scan_att_stocks
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/scan_att_stocks/new', to: 'scan_att_stocks#create'
end
