Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'pages#index'

namespace :api do
  namespace :v1 do
    resources :streaming_services, param: :title
    resources :reviews, only: [:create, :destroy]
    resources :users, only: [:create, :destroy, :edit, :destroy]
    resources :selections, only: [:show]
  end
end
 
# api routes Airlines
#  get 'api/v1/streaming_services/:title/edit' to "api/v1/streaming_services#edit"
#  /api/v1/streaming_services' to                                                           api/v1/streaming_services#create
#  get 'api/v1/streaming_services/:title' to 'api/v1/streaming_services#show'
#  patch 'api/v1/streaming_services/:title' to 'api/v1/streaming_services#update'
#  get 'api/v1/streaming_services/:title' to 'api/v1/streaming_services#destroy'

get '*path', to: 'pages#index', via: :all

#   # get '/user/new', to: users#new
#   get "sign_up", to: "user#new"
#   # users_path
#   get	"/users", to: "users#index"
#   # new_user_path
#   get "/users/new", to: "users#new"
#   # edit_user_path
#   get "/users/:id/edit", to: "users#edit"
#   # user_path
#   get "/users/:id", to: "users#show"
# # get '*path' to: 'pages#index', via: :all

end
