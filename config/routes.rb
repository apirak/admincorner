# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams do
    resources :curriculums
    resources :students
    resources :members do
      collection { post :invite }
    end
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users

  get "dashboard", to: "pages#dashboard"
  get "landing_page", to: "pages#landing_page"
  # root "pages#landing_page"
end
