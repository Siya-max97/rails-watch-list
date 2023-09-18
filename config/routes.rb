Rails.application.routes.draw do
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy

  resources :lists do
    member do
      get 'bookmarks/new', to: 'bookmarks#create', as: 'bookmarks_new'
    end
  end

end
