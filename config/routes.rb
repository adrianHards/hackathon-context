Rails.application.routes.draw do
  root to: "stories#home"

  get "/next", to: "stories#next", as: :next
  resources :stories, only: [:home, :show, :index] do
    resources :sentences, only: [:show]
  end
end
