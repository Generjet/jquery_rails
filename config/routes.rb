Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :categories
  resources :books
  get 'books/publish', to: 'books#publish', as: 'publish_book'

  # resources :books do
  #   member do
  #     patch :publish
  #   end
  # end
  resources :players do
    collection do
      get 'search'
    end
  end

  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
