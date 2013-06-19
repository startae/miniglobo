Miniglobo::Application.routes.draw do
  namespace :admin do
    resources :articles
  end

  get 'frontend' => 'frontend#index'
  get 'frontend/:template' => 'frontend#show'
  root 'homepage#index'
end
