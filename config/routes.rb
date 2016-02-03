Rails.application.routes.draw do

  post "/signup", to: "registrations#create"
  delete "/signup", to: "registrations#delete"
  post "/login", to: "registrations#login"

end
