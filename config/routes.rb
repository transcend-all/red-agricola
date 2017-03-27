Rails.application.routes.draw do

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

  resources :garlic do
    collection { post :import }
  end

  resources :users, only: [:new, :create]

  root 'landing#index'

end
