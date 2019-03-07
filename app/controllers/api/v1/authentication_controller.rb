class Api::V1::AuthenticationController < ApplicationController
    def login_technician
        tech = Technician.create(user_hash)
        render json: tech
    end
    def login_dispatch
        tech = Dispatch.create(user_hash)
        render json: tech
    end
    def user_hash
        params.permit(:username, :password)
    end
end
