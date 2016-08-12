Rails.application.routes.draw do
  get 'users/show'

  devise_for :users

  get '/token' => 'home#token', as: :token

  resources :home, only: :index

  root 'users#show'
end
