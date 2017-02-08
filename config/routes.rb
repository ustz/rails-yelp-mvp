Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants do
    member do
      # get 'reviews', to: 'restaurants'
    end
    resources :reviews
  end
end
