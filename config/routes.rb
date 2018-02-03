Rails.application.routes.draw do
  #get 'welcome/index'
  resources :articles #se generan recursos para crear, leer, actualizar y eliminar

  #despues de el recurso se puede agregar un parametro a decir que acciones puede hacer
  #ejemplo:   resources :articles, only: [:create, :show] o , except: [:delete]

  get "special", to: "welcome#index" #cambia la dirreccion de la pagina al nombre que le asignas al get

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
