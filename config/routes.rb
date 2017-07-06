Rails.application.routes.draw do
  resources :colleges, only: %i[index]
  root to: "colleges#index"
end
