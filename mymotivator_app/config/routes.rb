Rails.application.routes.draw do



root to: "welcome#index"

get "welcome/index"
get "/about", to: "welcome#about", as: "about"
get "/signup", to: "users#new", as: "signup"
post "/users", to: "users#create"
get "/users/:id", to: "users#show", as: "user"

get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy", as: "destroy_session"
post "/sessions", to: "sessions#create"

get "/options", to: "options#index", as: "options"
get "/options/:id", to: "options#show", as: "option"

get "/goals", to: "goals#index", as: "goals"
get "/users/:id/goals/new", to: "goals#new", as: "new_goal"
#nester route issue
#post "/goals" to:

resources :steps

end
