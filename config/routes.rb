Rails.application.routes.draw do
  get '/', to: 'states#index'
  get 'issues/:id', to: 'issues#show'

  resources :states do
    resources :issues, only: [:show]
  end
end
