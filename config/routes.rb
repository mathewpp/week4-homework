Rails.application.routes.draw do

  root 'places#index'

  # This is the Golden 7 for Places
  get '/places' => 'places#index'
  get '/places/new' => 'places#new'
  post '/places' => 'places#submitted'

  get '/places/:id' => 'places#show'
  get '/places/:id/edit' => 'places#edit'
  patch '/places/:id' => 'places#update'
  
  delete '/places/:id' => 'places#delete'

  # Reviews
  post '/reviews/:place_id'  => 'reviews#create'

end