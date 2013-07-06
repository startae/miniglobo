Miniglobo::Application.routes.draw do
  namespace :admin, path_names: { new: 'criar', edit: 'editar' } do
    get '' => 'articles#index'
    resources :articles, path: 'noticias'
    resources :categories, path: 'categorias'
  end

  resources :articles, only: [:index, :show]
  resources :categories, only: [:show]
  resources :comments, only: [:create, :destroy]

  get 'frontend' => 'frontend#index'
  get 'frontend/:template' => 'frontend#show'

  root 'homepage#index'
end
