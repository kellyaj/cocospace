Rails.application.routes.draw do
  resources :spaces
  resources :posts
  get '(*slug)' => 'spaces#index'
end
