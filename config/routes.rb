<<<<<<< HEAD
Rails.application.routes.draw do 
  devise_for :users
  resources :users, only:[:index, :show]
  devise_for :views
  
  resources :posts do
    resources :comments, only:[:create, :destroy]
    resource :favorites, only:[:create, :destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
=======
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

>>>>>>> e2dc2d7 (ようやくonedriveの中にあったリポジトリをクローンでコピーし、連携ができた)
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
<<<<<<< HEAD
  root :to => 'homes#top'

=======
>>>>>>> e2dc2d7 (ようやくonedriveの中にあったリポジトリをクローンでコピーし、連携ができた)
end
