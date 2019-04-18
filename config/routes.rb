Rails.application.routes.draw do
  post '/signup', to: 'members#create'
  get '/signup',  to: 'members#new'
  get '/members/:id',  to: 'members#show'

  get 'users/new'

  get '/signup', to: 'users#new'

  get 'member_skill/home'
  get 'member_skill/project'

  root 'firebase#new'

  get    '/login',    to: 'firebase#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  post   '/accounts', to: 'accounts#create'
  delete '/accounts', to: 'accounts#destroy'

  resources :members

end
