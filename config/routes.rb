Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
=begin   get 'relacion_libros/index'
  get 'relacion_libros/show'
  get 'relacion_libros/edit'
  get 'bibliotecas/index'
  get 'bibliotecas/show'
  get 'bibliotecas/edit'
  get 'libros/index'
  get 'libros/show'
  get 'libros/edit'
  get 'autors/index'
  get 'autors/show'
  get 'autors/edit'
=end
  root "bibliotecas#index"

  resources :autors, :libros, :bibliotecas, :relacion_libros,:editorials, :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
