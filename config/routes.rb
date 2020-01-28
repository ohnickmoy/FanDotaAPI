Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
    end
  end
  namespace :api do
    namespace :v1 do
      delete '/team_followers/unfollow', to: 'team_followers#unfollow'

      resources :team_followers

    end
  end
  namespace :api do
    namespace :v1 do
      
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'

      resources :users

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
