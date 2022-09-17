Rails.application.routes.draw do
  root to: "stories#home"
  resources :stories, only: [:home, :show, :index]
end
