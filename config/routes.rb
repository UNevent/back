Rails.application.routes.draw do
  resources :liked_events do
    collection do 
      get 'by', to: "liked_events#by"
    end
  end

  resources :places
  resources :event_tags

  resources :events do
    collection do
      get 'createdby', to: "events#createdby"
    end
  end

  resources :interests
  resources :tags
  mount_devise_token_auth_for 'User', at: 'auth'

end
