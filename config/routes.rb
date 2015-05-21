Rails.application.routes.draw do
  resources :spaces
  get '(*slug)' => 'spaces#index'
end
