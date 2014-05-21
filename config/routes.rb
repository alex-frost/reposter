RePoster::Application.routes.draw do
  post "/repost" => "repost#create"
  resources :repost_urls

  root "welcome#index"
end
