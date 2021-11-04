# Aca estan todas las rutas, se definen los path

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  root to: "home#index"
  
  resources :noticium
  post "noticium/new", to: "noticium#new"


  

end
