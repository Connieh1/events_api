Rails.application.routes.draw do
  resources :events, only: [:index, :create]


  root "application#index"
end
