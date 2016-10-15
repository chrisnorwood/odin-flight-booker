Rails.application.routes.draw do
  root 'flights#index'
  get '/flights', to: 'flights#index'

  resources :bookings,  only: [:create, :show]
  post '/bookings/new', as: 'new_booking' 
end