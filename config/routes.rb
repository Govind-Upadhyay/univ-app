Rails.application.routes.draw do
  get 'students/index'
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  resources :students, except: [:new, :destroy]
  get 'signup', to: 'students#new'
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  post 'course_enroll', to: 'student_courses#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
