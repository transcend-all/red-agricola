Rails.application.routes.draw do

  get 'charts/index'

  resources :grapefruit do
    collection { post :import }
  end

  resources :mango do
    collection { post :import }
  end

  resources :whiteonion do
    collection { post :import }
  end

  resources :redonion do
    collection { post :import }
  end

  resources :garlics do
    collection { post :import }
  end

  resources :users, only: [:new, :create]

  root 'landing#index'

end
