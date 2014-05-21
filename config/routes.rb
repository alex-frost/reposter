RePoster::Application.routes.draw do
  get "repost/create"
  resources :repost_urls

  root "welcome#index"
end
