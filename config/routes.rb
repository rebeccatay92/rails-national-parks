Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#home'

  get '/parks', to: 'park#showall'
  post '/parks', to: 'park#create'
  get '/parks/new', to: 'park#new'

  get '/parks/:id', to: 'park#showone', as: 'parks_showone'
  delete '/parks/:id', to: 'park#destroy', as: 'parks_delete'

end
