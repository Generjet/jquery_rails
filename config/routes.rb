Rails.application.routes.draw do
  resources :books
  resources :players do
    collection do
      get 'search'
    end
  end

  root 'players#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
