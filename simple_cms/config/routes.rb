Rails.application.routes.draw do
  
  get 'section/index'

  get 'section/show'

  get 'section/new'

  get 'section/create'

  get 'section/edit'

  get 'section/update'

  get 'section/delete'

  get 'section/destroy'

  get 'pages/index'

  get 'pages/show'

  get 'pages/new'

  get 'pages/create'

  get 'pages/edit'

  get 'pages/update'

  get 'pages/delete'

  get 'pages/destroy'

  get 'page/index'

  get 'page/show'

  get 'page/new'

  get 'page/create'

  get 'page/edit'

  get 'page/update'

  get 'page/delete'

  get 'page/destroy'

  get 'demo/index'
  match ':controller(/:action(/:id))', :via => :get
  root 'demo#index'
  resources :subjects

end
