Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:create, :new]
    # Defines the root path route ("/")
  end

end
