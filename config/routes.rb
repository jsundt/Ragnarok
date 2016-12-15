Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  get '/', to: 'welcome#index', as: 'home'
  get '/typography', to: 'welcome#typography', as: 'typography'
  get '/objects', to: 'welcome#objects', as: 'objects'
end
