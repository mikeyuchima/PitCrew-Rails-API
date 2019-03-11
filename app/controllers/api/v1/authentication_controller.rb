# frozen_string_literal: true

class Api::V1::AuthenticationController < ApplicationController
    def login_technician
        tech = Technician.create(user_hash)
        render json: tech
    end
    def login_dispatch
        dispach = Dispatch.create(user_hash)
        render json: dispach
    end
    def user_hash
        params.permit(:username, :password_digest)
    end
end
