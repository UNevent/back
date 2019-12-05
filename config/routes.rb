Rails.application.routes.draw do
  resources :event_tags
  resources :events
  resources :interests
  resources :tags
  mount_devise_token_auth_for 'User', at: 'auth'
#   For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
