Rails.application.routes.draw do
  resources :jokes
  get '/myjokes', to: 'jokes#myjokes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
