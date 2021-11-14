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

  resources :campaings
  get 'campaings', to: 'campaings#index'
  get 'campaings/new', to: 'campaings#new'
  post 'campaings', to: 'campaings#create'
  get 'campaings/:id/edit', to: 'campaings#edit', as: 'editcampaing'
  patch 'campaings/:id', to: 'campaings#update' 
  delete 'campaings/:id', to: 'campaings#destroy'

  resources :vaccinations
  get 'vaccinations', to: 'vaccinations#index'
  get 'vaccinations/new', to: 'vaccinations#new'
  post 'vaccinations', to: 'vaccinations#create'
  get 'vaccinations/:id/edit', to: 'vaccinations#edit', as: 'editvaccination'
  patch 'vaccinations/:id', to: 'vaccinations#update' 
  delete 'vaccinations/:id', to: 'vaccinations#destroy'

end
