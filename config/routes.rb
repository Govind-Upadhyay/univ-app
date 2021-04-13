Rails.application.routes.draw do
  get 'students/index'
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  resources :students, except: [:destroy]
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
