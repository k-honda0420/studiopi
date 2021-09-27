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
  namespace :public do
    get 'chat_rooms/index'
    get 'chat_rooms/edit'
  end
  namespace :public do
    get 'reservations/index'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/destroy'
  end
  namespace :public do
    get 'calendars/index'
    get 'calendars/show'
  end
  devise_for :admins
  devise_for :customers
    
    
  namespace :public do
    get 'homes/about'
  end
  root to: 'public/homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
