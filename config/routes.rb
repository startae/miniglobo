Miniglobo::Application.routes.draw do
  devise_for :users

  namespace :admin, path_names: { new: 'criar', edit: 'editar' } do
    get '' => 'articles#index'
    resources :articles, path: 'artigos'
    resources :categories, path: 'categorias'
    resources :users, path: 'administradores'
  end

  resources :articles, path: 'artigos', only: [:index, :show]
  resources :categories, path: 'categorias', only: [:show]
  resources :comments, path: 'comentarios', only: [:create, :destroy]

  get 'frontend' => 'frontend#index'
  get 'frontend/:template' => 'frontend#show'

  root 'homepage#index'
end
