Rails.application.routes.draw do
  resources :contents
  devise_for :utentis
  devise_for :user
  root 'pages#home'

  get 'about' => 'pages#about'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end


