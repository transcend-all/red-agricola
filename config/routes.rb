Rails.application.routes.draw do

  get 'auth/google_oauth2/callback', to: 'users#new'
  get 'auth/failure', to: redirect('/')

  get 'landing/spreadsheet'

  get 'landing/test'

  get 'landing/api'

  get 'controls/index'

  get 'about/index'

  get 'charts/index'

  resources :plants do
    collection { post :import }
  end

  resources :users, only: [:new, :create]

  root 'landing#index'

end
