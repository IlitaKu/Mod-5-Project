Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'users#login'
      get '/validate', to: 'users#validate'
      resources :user_recipes
      post '/user_recipes', to: 'user_recipes#create'
    end
  end
  # resources :UserRecipe, only: [:create]
  # post 'create', to: 'user_resipes#create'
end
