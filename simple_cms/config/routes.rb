Rails.application.routes.draw do
  
  


  get 'sections/index'

  get 'sections/show'

  get 'sections/new'

  get 'sections/create'

  get 'sections/edit'

  get 'sections/update'

  get 'sections/delete'

  get 'sections/destroy'

  get 'demo/index'
  match ':controller(/:action(/:id))', :via => :get
  root 'demo#index'
  resources :subjects

end
