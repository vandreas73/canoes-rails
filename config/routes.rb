Rails.application.routes.draw do
  get 'competitions/index'
  get 'competitions/new'
  get 'competitions/edit'
  get 'crew/index'
  get 'crew/new'
  get 'crew/edit'
  get 'canoes/new'
  get 'canoes/edit'
  get 'canoes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
