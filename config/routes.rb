Rails.application.routes.draw do

  get "/", to: "urls#new"
  post "/create", to: "urls#create"
  get "/:id", to: "urls#find"

end
