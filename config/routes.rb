Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  resources :spaces
  resources :posts
  resources :events
  get 'pr' => 'pull_requests#index'
  get 'callbacks/fitbit'
  get 'ct' => 'authorizations#fitbit' #some place, at that controller have a button to redirect
  get 'dashboard' => 'dashboard#index'
  get '(*slug)' => 'spaces#index'
end
