Rails.application.routes.draw do
  root to: "colleges#index"
  resources :colleges, only: %i[index] do
    collection do
      post :basic_import
      post :advanced_import
      delete :delete_all
    end
  end
end
