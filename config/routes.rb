Rails.application.routes.draw do
  get 'users/index'
  get 'events/search/sort_new', to: 'events#search', as: 'sort_new'
get 'events/search/sort_old', to: 'events#search', as: 'sort_old'
get 'events/search/sort_join', to: 'events#search', as: 'sort_join'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
end
