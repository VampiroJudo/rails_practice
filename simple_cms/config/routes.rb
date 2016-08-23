Rails.application.routes.draw do
  
  

  get 'demo/index'
  match ':controller(/:action(/:id))', :via => :get
  root 'demo#index'
  resources :subjects

end
