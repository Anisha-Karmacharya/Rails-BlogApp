Rails.application.routes.draw do
  get 'author/index'
  # get 'blogs/index'
  # get "/blogs", to: "blogs#index"
  # get "/blogs/new", to: "blogs#new"
  # get "/blogs/:id", to: "blogs#show"
  # post "/blogs", to: "blogs#create"  # usually a submitted form
  # get "/blogs/:id/edit", to: "blogs#edit"
  # put "/blogs/:id", to: "blogs#update" # usually a submitted form
  # delete "/blogs/:id", to: "blogs#destroy"
  root to:"blogs#index"
  resources :blogs, :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
