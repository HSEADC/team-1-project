Rails.application.routes.draw do
  get 'welcome/index'
  root "welcome#index"
  devise_for :users

  namespace :api do
    namespace :v1 do
      get 'chats/:id/messages', to: 'messages#index', as: 'chat_messages'
      post 'chats/:id/messages/create', to: 'messages#create', as: 'create_chat_message'
      put 'messages/:id', to: 'messages#update', as: 'update_chat_message'
    end
  end


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
