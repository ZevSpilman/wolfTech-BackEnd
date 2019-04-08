Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :residents
      resources :nurses
      resources :appointments
      resources :alerts
      resources :admins
      resources :units
      resources :shifts
    end
  end
  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
