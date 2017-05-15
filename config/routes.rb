Rails.application.routes.draw do
  
  root 'bars#timeline'

  get 'bars/admin_show'
  get 'foods/admin_show'
  get 'snacks/admin_show'
  
  get 'comment_snacks/create'

  get 'comment_snacks/destroy'

  get 'comment_foods/create'

  get 'comment_foods/destroy'

  get 'comment_bars/create'

  get 'comment_bars/destroy'

  root 'bars#index'

  get 'snacks/index'

  get 'foods/index'

  get 'comments/create'

  get 'comments/destroy'

  get 'bars/index'

  get 'posts/index'

  get 'bars/thebar'
  get 'snacks/thesnack'
  get 'foods/thefood'

  post 'bars/search'
  get 'bars/timeline'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :foods do 
    resources :comment_foods, only: [:create, :destroy]
  end

  resources :bars do
    resources :comment_bars, only: [:create, :destroy]
  end

  resources :snacks do 
    resources :comment_snacks, only: [:create, :destroy]
  end
end
