Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :brands, only: %i[show new create]
end
