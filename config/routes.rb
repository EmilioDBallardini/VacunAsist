# Aca estan todas las rutas, se definen los path

Rails.application.routes.draw do

  resources :user
  get "users/:id/edit", to: "user#edit", as: 'useredit'
  get "users/:id/show", to: "user#show", as: 'usershow'
  get "users/index", to: "user#index", as: 'userindex'


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
  get 'user/createvacun', to: 'user#new', as: 'createvacunador'
  post 'user/create', to: 'user#create', as: 'crearvacun' 
 # get 'user/show', to: 'user#show'
 

  resources :campaingvaccines
  get 'campaingvaccines', to: 'campaingvaccines#index'
  get 'campaingvaccines/new', to: 'campaingvaccines#new'
  post 'campaingvaccines', to: 'campaingvaccines#create'
  get 'campaingvaccines/:id/edit', to: 'campaingvaccines#edit', as: 'editcampaingvaccines'
  patch 'campaingvaccines/:id', to: 'campaingvaccines#update'
  delete 'campaingvaccines/:id', to: 'campaingvaccines#destroy'

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
  get 'turnos/show', to: 'turnos#show', as: 'showturno'
  post 'turnos', to: 'turnos#create'
  get 'turnos/:id/edit', to: 'turnos#edit', as: 'editturno'
  patch 'turnos/:id', to: 'turnos#update'
  delete 'turnos/:id', to: 'turnos#destroy'

  resources :campaingfor_users
  get 'campaingfor_users', to: 'campaingfor_users#index'
  get 'campaingfor_users/new', to: 'campaingfor_users#new'
  post 'campaingfor_users', to: 'campaingfor_users#create'
  get 'campaingfor_users/:id/edit', to: 'campaingfor_users#edit', as: 'editcampaingfor_users'
  #get "campaingfor_users/:id/show", to: "campaingfor_users#show", as: 'showcampaingfor_user'
  patch 'campaingfor_users/:id', to: 'campaingfor_users#update'
  delete 'campaingfor_users/:id', to: 'campaingfor_users#destroy'
  get 'campaingfor_users/:id/sol_turno', to: 'campaingfor_users#solturno', as: 'solturnocampaingfor_users'

  resources :vacunas
  get 'vacunas', to: 'vacunas#index'
  get 'vacunas/show', to: 'vacunas#show', as: 'showvacuna'
  get 'vacunas/new', to: 'vacunas#new'
  post 'vacunas', to: 'vacunas#create'
  get 'vacunas/:id/edit', to: 'vacunas#edit', as: 'editvacuna'
  patch 'vacunas/:id', to: 'vacunas#update'
  delete 'vacunas/:id', to: 'vacunas#destroy'

  resources :tipo_vacunas
  get 'tipo_vacunas', to: 'tipo_vacunas#index'
  get 'tipo_vacunas/new', to: 'tipo_vacunas#new'
  post 'tipo_vacunas', to: 'tipo_vacunas#create'
  get 'tipo_vacunas/:id/edit', to: 'vtipo_acunas#edit', as: 'edittipo_vacuna'
  patch 'tipo_vacunas/:id', to: 'tipo_vacunas#update'
  delete 'tipo_vacunas/:id', to: 'tipo_vacunas#destroy'
end
