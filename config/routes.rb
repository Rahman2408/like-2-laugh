Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :jokes
  resources :sessions, only: [:create]
  get '/myjokes', to: 'jokes#myjokes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
