Rails.application.routes.draw do

root to: "welcome#index"

get 'welcome/index'
get '/about', to: 'welcome#about', as: 'about'

end
