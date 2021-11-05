# Aca estan todas las rutas, se definen los path

Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  devise_for :noticium, controllers:
  {
    noticium: 'noticium/noticium'
  }
  
  resources :users
  post "users/edit", to: "users#edit"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  root to: "home#index"
  
  resources :noticium
  post "noticium/new", to: "noticium#new"

  resources :user
  post "user/show", to: "user#show"
  
  resources :usercampaings
  get "usercampaing/new", to:"usercampaing#new"
  post "usercampaing", to:"usercampaing#create"

end
