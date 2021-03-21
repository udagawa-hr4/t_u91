Rails.application.routes.draw do
  devise_for :users
  
  root to: "posts#index"


get 'blogs/index'
  resources :blogs

  resources :posts,only: [:show,:new,:create] do
    collection do
      get 'tweets'
    end
  end

end
