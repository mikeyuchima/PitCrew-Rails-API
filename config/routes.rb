# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authentication, only: [] do
        collection do
          get :login
        end
      end
    end
  end
end
