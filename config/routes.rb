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



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  root to: "home#index"

  resources :noticium
  post "noticium/new", to: "noticium#new"

  resources :user
  get "users/edit", to: "user#edit", as: 'useredit'
  get "users/show", to: "user#show", as: 'showperfil'


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

  resources :turnos
  get 'turnos', to: 'turnos#index'
  get 'turnos/new', to: 'turnos#new'
  post 'turnos', to: 'turnos#create'
  get 'turnos/:id/edit', to: 'turnos#edit', as: 'editturno'
  patch 'turnos/:id', to: 'turnos#update'
  delete 'turnos/:id', to: 'turnos#destroy'

  resources :campaingfor_users
  get 'campaingfor_users', to: 'campaingfor_users#index'
  get 'campaingfor_users/new', to: 'campaingfor_users#new'
  post 'campaingfor_users', to: 'campaingfor_users#create'
  get 'campaingfor_users/:id/edit', to: 'campaingfor_users#edit', as: 'editcampaingfor_users'
  patch 'campaingfor_users/:id', to: 'campaingfor_users#update'
  delete 'campaingfor_users/:id', to: 'campaingfor_users#destroy'

  resources :vacunas
  get 'vacunas', to: 'vacunas#index'
  get 'vacunas/new', to: 'vacunas#new'
  post 'vacunas', to: 'vacunas#create'
  get 'vacunas/:id/edit', to: 'vacunas#edit', as: 'editvacuna'
  patch 'vacunas/:id', to: 'vacunas#update'
  delete 'vacunas/:id', to: 'vacunas#destroy'
end
