Rails.application.routes.draw do

  resources :garlic, only: [:index] do
    collection { post :import }
  end

  resources :users, only: [:new, :create]

  root 'landing#index'

end
