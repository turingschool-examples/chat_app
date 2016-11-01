Rails.application.routes.draw do
  root 'home#index'
  resources :messages, only: ["index", "create"]
  get '/home', to: "home#index"
end
