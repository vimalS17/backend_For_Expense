Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  get '/user/:userId' , to: 'pages#checkId'
  get '/user/:password' , to: 'pages#checkPassword'

  post 'userCreate' , to: 'pages#createNewUser'
  get 'userShowAll' , to: 'pages#userAll'
  delete 'userDelete/:userId' , to: 'pages#userDelete'

  post 'userCreateData' , to: 'pages#createUserExpense'
  get '/date', to: 'pages#date'
  get '/paymenttype', to: 'pages#paymenttype'
  get '/amount', to: 'pages#amount'
  get 'description', to: 'pages#description'

end
