Rails.application.routes.draw do
  root 'blogs#index'
  devise_for :users
  resources :blogs do
  	resources :likes
   resources :comments
end
   	resources :replies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
