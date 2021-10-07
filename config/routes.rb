Rails.application.routes.draw do
  namespace :admin do
    get 'reservation/index'
    get 'reservation/show'
    get 'reservation/edit'
  end
  namespace :admin do
    get 'chat_rooms/index'
    get 'chat_rooms/edit'
  end
  namespace :admin do
    get 'calendars/index'
    get 'calendars/new'
    get 'calendars/show'
    get 'calendars/edit'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'sessions/new'
  end
  
  scope module: 'public' do
    get 'chat_rooms/index'
    get 'chat_rooms/edit'
    get 'reservations/index'
    patch 'reservations/update'
    post 'reservations/create'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/destroy'
    get 'calendars/index'
    get 'calendars/show'
    post 'calendars/create'
    get 'homes/about'
  end
  devise_for :admins
  devise_for :customers
  
  root to: 'public/homes#top'
#チャット
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
