RePoster::Application.routes.draw do
  post "repost/create"
  resources :repost_urls

  root "welcome#index"
end
