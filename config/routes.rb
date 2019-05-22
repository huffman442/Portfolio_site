Rails.application.routes.draw do
  

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :articles
  end

  get 'sessions/new'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :sessions

  get 'welcome/index'
  get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :tags
  end
  get 'tags/:tag', to: 'articles#index', as: :tag

  root 'welcome#index'

  get '/resume',    to:'welcome#resume'
end
