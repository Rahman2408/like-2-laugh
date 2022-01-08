Rails.application.routes.draw do
  resources :user_jokes, :path => 'myjokes'
  resources :users, only: [:create]
  resources :jokes
  resources :sessions, only: [:create]
  # get '/myjokes', to: 'jokes#myjokes'
  get '/me', to: 'sessions#autoLogin'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
