Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do 
  	root 'posts#index', as: 'authenticated_root'
  end

  root to: "home#index"
  
end
