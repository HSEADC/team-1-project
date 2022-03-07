Rails.application.routes.draw do
  devise_for :users
  resources :chat_list_items
  resources :blocklists
  resources :favourites
  resources :message_statuses
  resources :messages
  resources :chats
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
