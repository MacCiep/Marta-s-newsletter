Rails.application.routes.draw do

  get "/newsletter", to: "users#new"
  post "/newsletter", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
