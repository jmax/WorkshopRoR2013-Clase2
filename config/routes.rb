Library::Application.routes.draw do
  resources :categories

  resources :authors

  resources :books

  root to: "books#index"
end
