# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tickets, only:[:create]
      resources :authentication, only: [] do
        collection do
          get :login_technician
          get :login_dispatch
        end
      end
      resources :registration, only: [] do
        collection do
          post :register
        end
      end
    end
  end
end
