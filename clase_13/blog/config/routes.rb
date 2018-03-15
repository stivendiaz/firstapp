#Con as se renonmbra la ruta 
# get '/welcome/index', to: 'welcome#index', as: "welcome"
Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/index'
  get 'pages/show'

  get '/welcome', to: "welcome#index"

  get 'welcome/hello/:name', to: 'welcome#hello'

  
  #get 'welcome/index'
  #root 'welcome#index'
end