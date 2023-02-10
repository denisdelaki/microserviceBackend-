Rails.application.routes.draw do
  resources :customers do
    resources :accounts do
      member do
        post 'top_up'
        post 'withdraw'
      end
      resources :cards
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
