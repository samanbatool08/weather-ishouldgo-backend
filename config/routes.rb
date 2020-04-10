Rails.application.routes.draw do
  post '/signup', to:  'users#create'
  post '/login', to: 'users#login'
  get '/users', to: 'users#index'
  

  resources :activities, only: [:index, :create, :show, :destroy]


  resources :user_activities, only: [:create, :show, :index, :destroy]

end
