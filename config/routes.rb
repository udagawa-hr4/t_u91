Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: "posts#index"

# get 'blogs/index' 
  resources :blogs do
    get :search, on: :collection
  end

# get 'blogs/index'
  resources :blogs
  resources :users


  resources :posts do

    collection do
      get 'tweets'
      get 'search'
     
     
    end
    resources :comments, only: [:create,:update,:destroy,:edit]
  end


end
