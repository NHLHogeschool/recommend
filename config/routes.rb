Rails.application.routes.draw do
  resources :recommendations
  root to: 'recommendations#index'
end
