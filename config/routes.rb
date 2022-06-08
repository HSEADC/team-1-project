Rails.application.routes.draw do
  get 'welcome/index'
  root "welcome#index"
  devise_for :users
  # scope '/api/v1' do
    resources :chat_list_items
    resources :blocklists
    resources :favourites
    resources :message_statuses
    resources :messages
    resources :chats
    resources :profiles
    resources :users
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
