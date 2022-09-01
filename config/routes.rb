Rails.application.routes.draw do
  root to: 'homes#top' , as: "top"
  get "home/about" => "homes#about"
  devise_for :users

  resources :books, only: [:new,:create,:show,:destroy,:index]
  resources :users, only: [:show,:edit,:update,:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
