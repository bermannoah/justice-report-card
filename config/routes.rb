Rails.application.routes.draw do
  get '/', to: 'states#index'
  get 'issues/:id', to: 'issues#show'

  resources :states do
    resources :issues, only: [:show]
  end

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions, only: [:create, :destroy]
end
