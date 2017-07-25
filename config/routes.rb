Rails.application.routes.draw do
  get 'landing/index'
  #root controller: :landing, action: :index

  resource :articles
  get '/articles/:id', to: 'articles#show', as: 'article'

  root controller: :landing, action: :index
end
