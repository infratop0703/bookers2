Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  
  resource :books, only: [:new, :index, :show]
  resource :users, only: [:show,:edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
