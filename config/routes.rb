Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#home'

  get '/parks', to: 'park#showall'
  post '/parks', to: 'park#create', as: 'parks_create'
  get '/parks/new', to: 'park#new' #new park form
  get '/parks/:id', to: 'park#showone', as: 'parks_showone'
  get '/parks/:id/edit', to: 'park#edit', as: 'parks_edit'
  patch '/parks/:id', to: 'park#update', as: 'parks_update'
  delete '/parks/:id', to: 'park#destroy', as: 'parks_delete'

end
