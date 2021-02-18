Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about' # means a GET request to the about page
end
