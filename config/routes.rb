Rails.application.routes.draw do
  get 'home/index'

  resources :recipes
  post 'recipes/create_from_url'
  get 'recipes/:id/live', controller: :recipes, action: :live

  get 'errors/exception', controller: :errors, action: :exception

  root 'home#index'
end
