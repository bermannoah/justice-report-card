Rails.application.routes.draw do
  get '/', to: 'issues#index'
  get 'issues/:id', to: 'issues#show'

  resources :states do
    resources :issues, only: [:show]
  end
end
