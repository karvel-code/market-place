Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:create]
      post 'usersShow', to: 'users#show'
      post 'usersUpdate', to: 'users#update'
      post 'usersDelete', to: 'users#destroy'
    end
  end
end
