Rails.application.routes.draw do

  get 'auth/google_oauth2/callback', to: 'users#new'
  get 'auth/failure', to: redirect('/')

  get 'landing/spreadsheet'

  get 'landing/api'

  get 'controls/index'

  get 'plants/index'

  get 'about/index'

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
