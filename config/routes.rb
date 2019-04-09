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
      post "/login", to: "auth#login"
			# login on refresh
			get '/auto_login', to: "auth#auto_login"
    end
  end

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
