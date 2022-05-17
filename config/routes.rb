Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get "static_pages/home"
    get "/help", to: "static_pages#help"
    get "/signup", to: "users#new"
    root "static_pages#home"
    resources :users
  end
end
