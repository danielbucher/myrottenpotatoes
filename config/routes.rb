Myrottenpotatoes::Application.routes.draw do
  
  post '/movies/search_tmdb'
  resources :movies
  
  root :to => redirect('/movies') 

end
