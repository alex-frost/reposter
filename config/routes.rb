RePoster::Application.routes.draw do
  resources :repost_urls

  root "welcome#index"
end
