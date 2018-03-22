Rails.application.routes.draw do
  
  get 'comments/create'

  get 'comments/destroy'

  #주소, 경로 이름 바꾸기 
  devise_for :users, 
  path: 'users',
  path_names: {sign_in: 'login' , sign_out: 'logout'} 
  
  root "posts#index"
  resources :posts do
   resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  