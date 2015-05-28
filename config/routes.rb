Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  resources :spaces
  resources :posts
  get '(*slug)' => 'spaces#index'
end
