Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :events, only: [:index, :show, :new, :create] do
    resources :guests
  end

  root to: 'events#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
