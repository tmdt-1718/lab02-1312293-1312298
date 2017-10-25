Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index', to: 'lab02_ecommerce#index'
  get 'login', to: 'lab02_ecommerce#index'
  post 'login', to: 'lab02_ecommerce#login'
  post '/index', to: 'lab02_ecommerce#create'
  get '', to: 'lab02_ecommerce#index'
  get '/register', to: 'lab02_ecommerce#register'
  get '/messenger', to:'messenger#index'
  get '/inbox', to:'inbox#index'

  post '/addfriend', to: 'messenger#addfriend'
  post '/sendMessage', to: 'inbox#sendMessage'
  delete '/sessions/logout', to: 'sessions#destroy', as: :logout
end
