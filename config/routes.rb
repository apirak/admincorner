Rails.application.routes.draw do
  resources :teams
  devise_for :users
  get "dashboard", to: "pages#dashboard"
  get "landing_page", to: "pages#landing_page"
  root "pages#landing_page"
end
