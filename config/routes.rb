Rails.application.routes.draw do
  get 'admin' => 'admin#index' 
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end
end
