Rails.application.routes.draw do
  root to: "stories#home"

  resources :stories, only: [:home, :show, :index] do
    resources :sentences, only: [:show]
    get "/next", to: "stories#next", as: :next
  end
end
