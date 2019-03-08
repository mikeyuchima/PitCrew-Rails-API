# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tickets, only: [:create, :index]
      resources :authentication, only: [] do
        collection do
          post :login_technician
          post :login_dispatch
        end
      end
    end
  end
end
