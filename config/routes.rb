Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "tweets#index"
  get "/auth/twitter/callback", to: "tweets#login"
  get "/logout", to: "tweets#logout"
end
