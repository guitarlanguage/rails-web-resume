Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get '/portfolio' => 'pages#portfolio'

  get '/messages' => 'messages#index'

  get '/messages/new' => 'messages#new', as: :new_message


  post 'messages' => 'messages#create'
end
