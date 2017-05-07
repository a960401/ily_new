Rails.application.routes.draw do
  
  get 'snacks/index'

  get 'foods/index'

  get 'comments/create'

  get 'comments/destroy'

  get 'bars/index'

  get 'posts/index'

  root 'bars#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :schedules
  resources :foods
  resources :bars
  resources :snacks
end
