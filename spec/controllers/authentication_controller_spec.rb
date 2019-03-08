# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::AuthenticationController, type: :controller do
    describe 'POST login for technician' do
        let(:login_technician) {FactoryBot.create(:technician)}
        let(:params) do
            {
                username: Faker::Name.name,
                password: Faker::String.random(8)
            }
        end
        before do
            post :login_technician, params: params
        end
        it 'returns a successful response' do
            expect(json_response[:username]).to eq(params[:username])
            expect(json_response[:password]).to eq(params[:password])
        end
    end

    describe 'POST login for dispatch' do
        let(:login_dispatch) {FactoryBot.create(:dispatch)}
        let(:params) do
            {
                username: Faker::Name.name,
                password: Faker::String.random(8)
            }
        end
        before do
            post :login_dispatch, params: params
        end
        it 'returns a successful response' do
            expect(json_response[:username]).to eq(params[:username])
            expect(json_response[:password]).to eq(params[:password])
        end
    end
end
