Rails.application.routes.draw do
  devise_for :managers, controllers: {
    sessions:      'admin/managers/sessions',
    passwords:     'admin/managers/passwords',
    registrations: 'admin/managers/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
