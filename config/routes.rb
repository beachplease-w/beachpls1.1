Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tournaments, only: [:index, :show] do
    resources :inscriptions, only: [:new, :create]
  end
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
