Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'

  get 'signup' => 'users#new'
  post '/users' => 'users#create'
end
