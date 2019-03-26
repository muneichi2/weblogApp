Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'contents#index'

  resources :contents do
    collection do
      get '/about', to: 'contents#about'
    end
  end

  resources :posts
end
