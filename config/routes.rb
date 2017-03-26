Rails.application.routes.draw do

  resources :grapefruit

  resources :mango

  resources :whiteonion

  resources :redonion

  resources :garlic do
    collection { post :import }
  end

  resources :users, only: [:new, :create]

  root 'landing#index'

end
