Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: "posts#index"


# get 'blogs/index'
  resources :blogs

  resources :posts,only: [:show,:new,:create] do
    collection do
      get 'tweets'
    end
  end

end
