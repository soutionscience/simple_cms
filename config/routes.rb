Rails.application.routes.draw do
  get 'sections/edit'

  get 'sections/index'

  get 'sections/new'

  get 'sections/show'

  get 'pages/index'

  get 'pages/edit'

  get 'pages/new'

  get 'pages/show'

  get 'pages/delete'

  #get 'subjects/new'

  #get 'subjects/edit'

  #get 'subjects/show'

  #get 'subjects/index'

  #get 'subjects/delete'

  match ':controller(/:action(/:id))', :via => [:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
