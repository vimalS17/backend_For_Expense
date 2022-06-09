Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  # root "pages#office"
  # # get '/about', to: 'pages#about'
  # # get '/number', to: 'pages#number'
  # # post '/about', to: 'pages#about'
  # # get '/task/:id',to: 'pages#task'
  # delete '/task/:id', to: 'pages#delete'
  # # post 'task' , to: 'pages#create'
  get '/showAll' , to: 'pages#showAll'
  # post '/test' , to: 'pages#create_table'
  # get '/show/:title' , to: 'pages#Letshow'

  get '/user/:userId' , to: 'pages#checkId'
  get '/user/:password' , to: 'pages#checkPassword'

  post 'userCreate' , to: 'pages#createNewUser'
  get 'userShowAll' , to: 'pages#userAll'
  delete 'userDelete/:userId' , to: 'pages#userDelete'

end
