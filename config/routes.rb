Miniglobo::Application.routes.draw do
  get 'frontend' => 'frontend#index'
  get 'frontend/:template' => 'frontend#show'

  devise_for :users

  namespace :admin, path_names: { new: 'criar', edit: 'editar' } do
    get '' => 'articles#index'
    resources :articles, path: 'artigos'
    resources :categories, path: 'categorias'
    resources :users, path: 'administradores'
  end

  resources :comments, path: 'comentarios', only: [:create, :destroy]

  if Rails.env.development?
    mount MailPreview => 'mail_view'
  end

  root 'homepage#index'
  resources :categories, path: '' do
    resources :articles, path: '', only: [:index, :show]
    resources :contacts, path: 'contato', only: [:new, :create]
  end
end
