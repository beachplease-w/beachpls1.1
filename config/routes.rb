Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tournaments, only: [:index, :show] do
    resources :messages, only: :create
    resources :teams, only: [:index] do
      resources :inscriptions, only: [:create]
    end
  end
  resources :users, only: [:show, :update]
  resources :team_players, only: [:create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
