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
    get 'customers/unsubscribe'
    get 'calendars/index'
    get 'calendars/show'
    post 'calendars/create'
    get 'homes/about'
    delete 'reservations/destroy'
    delete 'calendars/:id' => 'calendars#destroy', as: 'calendar_destroy'
    get 'calendars/edit/:id' => 'calendars#edit', as: 'calendar_edit'
    patch 'calendars/:id' => 'calendars#update'
    get 'customers/edit/:id' => 'customers#edit', as: 'edit_customer'
    get 'customers/unsubscribe'
    patch 'customers' => 'customers#update', as: 'customer'
    patch 'customers/withdraw'
    get 'homes/index'
    get 'homes/show/:id' => 'homes#show', as: 'public_customer'
  end
  get 'admin/show' => 'admin/homes#show', as: 'admin_customer'
  get 'admin/edit/:id' => 'admin/homes#edit', as: 'admin_customer_edit'
  patch 'admin' => 'admin/homes#update', as: 'admin_customer_update'
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  
  root to: 'public/homes#top'
#チャット
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
