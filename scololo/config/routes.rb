Rails.application.routes.draw do
  get 'users' => 'users#home'

  get 'users/login' => 'users#login'

  post 'users/login' => 'users#check'

  delete 'users' => 'users#logout'  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
