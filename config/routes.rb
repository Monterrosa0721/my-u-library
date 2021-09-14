Rails.application.routes.draw do
  devise_for :installs
  #get 'welcome/index'
  resources :books
=begin 
   get "/books" index
   post "/books" create
   delete "/books" delete
   get "/books/:id" show
   get "/books/new" new
   get "/books/:id/edit" edit
   patch "/books/:id" update
   put "/books/:id" update
=end

  root 'books#index'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
