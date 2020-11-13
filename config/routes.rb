Rails.application.routes.draw do
  root 'homes#top'
  get 'users/index_member' , to: 'users#index_member'
  get 'users/index_contact' , to: 'users#index_contact'

  resources :boards
  resources :comments, only: %i[create destroy]


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
    
  }

  resources :users 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
