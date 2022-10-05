Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'users#index'
  root "static_pages#home"
  get  "/signup",  to: "users#new"
  get  "/about",   to: "static_pages#about"
end
