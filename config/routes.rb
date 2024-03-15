Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Route for health check
  get "up" => "rails/health#show", as: :rails_health_check
end
