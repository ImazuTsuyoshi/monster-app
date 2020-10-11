Rails.application.routes.draw do
  root 'homes#top'

  resources :boards
  resources :comments, only: %i[create destroy]


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
    
  }

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
