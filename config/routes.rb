Rails.application.routes.draw do
  get 'items/create'

  get 'users/show'

  devise_for :users

  resources :users, only: [] do
    resources :items, only: [:create, :destroy]
  end

  get '/token' => 'home#token', as: :token

  resources :home, only: :index

  root 'users#show'
end
