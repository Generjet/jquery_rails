Rails.application.routes.draw do
  resources :blog_posts
  resources :books do
    member do
      patch :publish
    end
  end
  resources :players do
    collection do
      get 'search'
    end
  end

  root 'blog_posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
