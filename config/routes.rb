Rails.application.routes.draw do
  get 'welcome/index' 
  root 'welcome#index'
  resources :liked_events 

  resources :places
  resources :event_tags

  resources :events do
    collection do
      get 'full', to: "events#full"
      get 'created_by', to: "events#created_by"
      get 'liked_by', to: "events#liked_by"
      get 'in_place', to: "events#in_place"
      get 'with_tags', to: "events#with_tags"
      put 'filter_all', to: "events#filter_all"
    end
  end

  resources :interests
  resources :tags do
    collection do
      get 'interested_in', to: "tags#interested_in"
    end
  end

  mount_devise_token_auth_for 'User', at: 'auth'

end
