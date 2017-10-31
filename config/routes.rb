Rails.application.routes.draw do

  # resources :posts do
  #   resources :comments
  # end

  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#create'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
  
  get '/posts/:post_id/comments', to: 'comments#index', as: 'post_comments'
  get '/posts/:post_id/comments/new', to: 'comments#new'
  post '/posts/:post_id/comments', to: 'comments#create'
  

  root "posts#index"

  get '/about', to: 'pages#about'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  post '/users' => 'users#create'
end
