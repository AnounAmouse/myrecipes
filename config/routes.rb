Rails.application.routes.draw do
  
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  
  # get '/recipes', to: 'recipes#home'
  # get '/recipes/new', to: 'recipes#new', as: "new_recipe"
  # post '/recipes', to: 'recipes#create'
  # get '/recipes/:id/edit', to: 'recipes#edit', as: "edit_recipe"
  # patch '/recipes/:id', to: 'recipes#update'
  # get 'recipes/:id', to: 'recipes#show', as: "show_recipe"
  # delete '/recipes/:id', to: 'recipes#destroy'
  
  # takes care of everything done in the comments above
  resources :recipes
  
end
