Rails.application.routes.draw do
root "home#index"


  resources :teams do
    resources :boards do
      resources :lists, only: [ :create, :update, :destroy ] do
        resources :cards, only: [ :create, :update, :destroy ] do
          resources :comments, only: [ :create, :destroy ]
        end
      end
    end
  end
end
