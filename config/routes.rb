Rails.application.routes.draw do
  root to:"memos#index"
  get "/new", to:"memos#new"
  post "/create", to:"memos#create"
  post "/memos/:id/edit", to:"memos#edit"
  resources :memos, onry: [:destroy, :update]
  get "/categories/:id", to:"categories#show"
end
