Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :tags
  end
  get 'tags/:tag', to: 'articles#index', as: :tag

  root 'welcome#index'

  get '/resume',    to:'welcome#resume'


end
