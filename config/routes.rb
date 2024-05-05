Rails.application.routes.draw do
  get 'competitions/:canoe_id/index', to: 'competitions#index', as: 'competition_index'
  get 'competitions/new'
  get 'competitions/edit/:id', to: 'competitions#edit', as: 'edit_competition'
  get 'crew/:canoe_id/index', to: 'crew#index', as: 'crew_index'
  get 'crew/new'
  get 'crew/edit/:id', to: 'crew#edit', as: 'edit_crew'
  get 'canoes/new'
  get 'canoes/edit/:id', to: 'canoes#edit', as: 'edit_canoe'
  get 'canoes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "canoes#index"
end
