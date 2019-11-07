Rails.application.routes.draw do
  root to: 'properties#index'
  resources :properties do
    resources :stations, only: [:destroy, :show]
    collection do
      post :confirm
    end
  end
end
