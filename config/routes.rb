Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :fast_jsonapi do
    resources :users, only: :index
  end

  namespace :ams do
    resources :users, only: :index
  end
end
