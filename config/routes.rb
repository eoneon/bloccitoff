Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  # get '/token' => 'home#token', as: :token

  resources :home, only: :index

  root 'users#show'
end
