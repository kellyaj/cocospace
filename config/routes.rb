Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  resources :spaces
  resources :posts
  resources :events
  post 'login_reports' => 'login_reports#create'
  get 'pr' => 'pull_requests#index'
  get 'callbacks/fitbit'
  get 'ct' => 'authorizations#fitbit'
  get 'dashboard' => 'dashboard#index', as: "dashboard"
  get '(*slug)' => 'spaces#index'
end
