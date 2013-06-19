Miniglobo::Application.routes.draw do
  get 'frontend' => 'frontend#index'
  get 'frontend/:template' => 'frontend#show'
  root 'homepage#index'
end
