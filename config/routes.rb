Rails.application.routes.draw do
  
  # CREATE/READ/UPDATE/DELETE : get/post/patch/destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "show", to "User#show"
  resources :users

  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"
  # post "/users", to: "users#create"

end
